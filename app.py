from cmath import e
from os import error
from flask import Flask, render_template, url_for, request, redirect
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.types import CHAR, TypeDecorator
import datetime
import uuid
from sqlalchemy.sql import func
import pandas as pd
from scrap_game import GameScrapper

app = Flask(__name__)

# Database-------------------------------
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root@localhost/online_game'
db = SQLAlchemy(app)

# UUID------------------------------------
class GUID(TypeDecorator):
    """Platform-independent GUID type.
    Uses CHAR(32), storing as stringified hex values.
    source: https://gist.github.com/gmolveau/7caeeefe637679005a7bb9ae1b5e421e
    """
    impl = CHAR

    def load_dialect_impl(self, dialect):
        return dialect.type_descriptor(CHAR(32))

    def process_bind_param(self, value, dialect):
        if value is None:
            return value
        else:
            if not isinstance(value, uuid.UUID):
                return "%.32x" % uuid.UUID(value).int
            else:
                # hexstring
                return "%.32x" % value.int

    def process_result_value(self, value, dialect):
        if value is None:
            return value
        else:
            if not isinstance(value, uuid.UUID):
                value = uuid.UUID(value)
            return value

# Create db model-------------------------------
class User(db.Model):
    __tablename__='user_dim'

    key = db.Column(GUID(), primary_key=True, default=lambda: str(uuid.uuid4()))
    id = db.Column(db.Integer, unique = True, nullable = False)
    name = db.Column(db.String(255), nullable=False)
    link = db.Column(db.String(255), nullable=False)
    reviews = db.relationship('Review', backref='user', lazy=True)

    time_created = db.Column(db.DateTime(timezone=True), server_default=func.now())
    time_updated = db.Column(db.DateTime(timezone=True), onupdate=func.now())

    def __repr__(self):
        return '<User %r> % self.fname'

categories = db.Table('categories_game_fact',
    db.Column('category_key', GUID(), db.ForeignKey('category_dim.key'), primary_key = True),
    db.Column('game_key', GUID(), db.ForeignKey('game_dim.key'), primary_key = True),
    db.Column('time_created',db.DateTime(timezone=True), server_default=func.now()),
    db.Column('time_updated',db.DateTime(timezone=True), onupdate=func.now())
)

class Category(db.Model):
    __tablename__='category_dim'
    key = db.Column(GUID(), primary_key=True, default=lambda: str(uuid.uuid4()))
    name = db.Column(db.String(225), nullable = False)

    time_created = db.Column(db.DateTime(timezone=True), server_default=func.now())
    time_updated = db.Column(db.DateTime(timezone=True), onupdate=func.now())

    def __repr__(self):
        return '<Category %r> % self.name'

class Game(db.Model):
    __tablename__='game_dim'

    key = db.Column(GUID(), primary_key=True, default=lambda: str(uuid.uuid4()))
    id = db.Column(db.Integer, unique = True, nullable = False)
    name = db.Column(db.String(255), nullable = False)

    # Many-to-Many game_dim (parent) * - * category_dim (child)
    categories = db.relationship('Category', secondary = categories, lazy='subquery', backref = db.backref('games', lazy=True))
    developer_key = db.Column(GUID(), db.ForeignKey('developer_dim.key'), nullable=False)
    release_key = db.Column(db.Integer, db.ForeignKey('date_dim.key'), nullable = False)
    reviews = db.relationship('Review', backref='game', lazy=True)

    time_created = db.Column(db.DateTime(timezone=True), server_default=func.now())
    time_updated = db.Column(db.DateTime(timezone=True), onupdate=func.now())

    def __repr__(self):
        return '<Game %r> % self.name'

class Developer(db.Model):
    __tablename__='developer_dim'

    key = db.Column(GUID(), primary_key=True, default=lambda: str(uuid.uuid4()))
    id = db.Column(db.Integer, unique = True, nullable = False)
    name = db.Column(db.String(255), nullable = False)
    # One to many ('target_model', backref='column_in_target_model', lazy = True (load data s necessary in one go))
    games = db.relationship('Game', backref='developer', lazy=True)

    time_created = db.Column(db.DateTime(timezone=True), server_default=func.now())
    time_updated = db.Column(db.DateTime(timezone=True), onupdate=func.now())

    def __repr__(self):
        return '<developer %r> % self.name'

class Date(db.Model):
    __tablename__='date_dim'

    key = db.Column(db.Integer, primary_key = True)
    year = db.Column(db.Integer, nullable=False)
    month = db.Column(db.Integer, nullable=False)
    month_name = db.Column(db.String(10), nullable=False)
    day = db.Column(db.Integer, nullable=False)
    day_of_week = db.Column(db.String(10), nullable=False)
    fulldate = db.Column(db.Date, nullable=False)
    reviews = db.relationship('Review', backref='date', lazy=True)
    games = db.relationship('Game', backref='date', lazy=True)

    def __repr__(self):
        return 'Date added'

class Review(db.Model):
    __tablename__='reviews_fact'

    game_key = db.Column(GUID(), db.ForeignKey('game_dim.key'), nullable=False, primary_key = True, autoincrement = False)
    user_key = db.Column(GUID(), db.ForeignKey('user_dim.key'), nullable=False, primary_key = True, autoincrement = False)
    date_key = db.Column(db.Integer, db.ForeignKey('date_dim.key'), nullable=False, primary_key = True, autoincrement = False)
    rating = db.Column(db.Integer, nullable=False)
    review_content = db.Column(db.Text, nullable=False)
    current = db.Column(db.Boolean, nullable=False)

    time_created = db.Column(db.DateTime(timezone=True), server_default=func.now())
    time_updated = db.Column(db.DateTime(timezone=True), onupdate=func.now())

# Other method---------------------------
def init_dates(df_path:str = 'DateFill.csv'):
        date_df = pd.read_csv(df_path,sep=';')

        print(date_df.columns)
        
        for index, row in date_df.iterrows():
            new_year = row['year']
            new_month = row['month']
            new_day = row['day']
            date_obj = datetime.date(new_year,new_month,new_day)

            new_date = Date(key = row['key'], year = new_year, month =new_month, month_name = row['month_name'], day = new_day, day_of_week = row['day_of_week'] ,fulldate = date_obj)

            try:
                db.session.add(new_date)
                db.session.commit()
            except e:
                print('Error in adding date')
                print(e)

def add_game():
    game_dict, review_list, game_cat_list = game_scrap.link_input()
    input_game(game_dict,review_list, game_cat_list)

def input_game(game_dict:dict, review_list:list, game_cat_list:list):
    # Time Key
    release_key = datetime.datetime.strptime(game_dict['release'], '%d %b, %Y').date()
    release_key = int(release_key.strftime('%Y%m%d'))

    # Developer Key
    dev_row=db.session.query(Developer).filter_by(name = game_dict['developer']).first()
    dev_row_count = db.session.query(Developer).count()
    
    if(dev_row is None):
        dev_row_count = dev_row_count + 1
        new_dev = Developer(name = game_dict['developer'], id = dev_row_count)

        try:
            db.session.add(new_dev)
            db.session.commit()
            print('Add developer success')
        except Exception as e:
            print('Error adding new developer')
            print(e)
            return
    
    dev_row=db.session.query(Developer).filter_by(name = game_dict['developer']).first()
    dev_key = dev_row.key

    # Adding game
    game_row=db.session.query(Game).filter_by(id = game_dict['id']).first()

    if(game_row is None):
        new_game_dict = {'id':game_dict['id'], 'name':game_dict['name'], 'release_key':release_key, 'developer_key':dev_key}
        new_game = Game(**new_game_dict)
        try:
            db.session.add(new_game)
            db.session.commit()
            print('Add game success')
        except Exception as e:
            print('Error adding new game')
            # print(e)
    
    game_row=db.session.query(Game).filter_by(id = game_dict['id']).first()
    game_key = game_row.key
    
    # Category Key
    for cat in game_cat_list:
        cat_row=db.session.query(Category).filter_by(name = cat).first()

        if(cat_row is None):
            new_cat = Category(name = cat)
            
            try:
                db.session.add(new_cat)
                db.session.commit()
                print('Add category success')
            except Exception as e:
                print('Error adding new category')
                print(e)
                return
    
        cat_row=db.session.query(Category).filter_by(name = cat).first()
        game_row.categories.append(cat_row)
        db.session.commit()

    input_review(review_list, game_key)

def input_review(review_list:list, game_key):    
    # Review---------------------------------------------------------------
    for review in review_list:
        #Time
        review_date_key = int(review["review_date"].strftime('%Y%m%d'))

        #User
        user_row=db.session.query(User).filter_by(link = review['user_link']).first()
        user_row_count = db.session.query(User).count()
        
        if(user_row is None):
            user_row_count = user_row_count + 1
            new_user = User(name = review['name'], id = user_row_count, link=review['user_link'])

            try:
                db.session.add(new_user)
                db.session.commit()
                print('Add user success')
            except Exception as e:
                print('Error adding new User')
                print(e)
        
        user_row=db.session.query(User).filter_by(link = review['user_link']).first()
        user_key = user_row.key
        
        #Rating
        new_rating=0

        if(review['rating'] == 'Recommended'):
            new_rating=1
        
        #Add review - CREATE Validation (add current flag to allow review modification, delete time created)
        review_row=db.session.query(Review).filter_by(game_key = game_key, user_key = user_key, date_key = review_date_key).first()

        # If current review does not exist
        if(review_row is None):
            existing_reviews = db.session.query(Review).filter_by(game_key = game_key, user_key = user_key).all()

            # If there are old reviews by the same user, change the current to no
            if existing_reviews is not None:
                for existing_review in existing_reviews:
                    existing_review.current = 0

            new_review_dict = {'game_key':game_key, 'user_key':user_key, 'date_key':review_date_key, 'rating':new_rating,'review_content':review['review_content'], 'current': 1}
            new_review = Review(**new_review_dict)

            try:
                db.session.add(new_review)
                db.session.commit()
                print('Add review success')
            except Exception as e:
                print('Error adding new review')
                print(e)
            
# Routing--------------------------------
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/analysis')
def show_analysis():
    avg_rating = db.session.query(Game.name, func.avg(Review.rating).label('Average Rating'),func.count(Review.rating).label('Total Reviewers')).filter(Review.game_key == Game.key).group_by(Game.key, Game.name).order_by(func.avg(Review.rating).desc()).all()

    avg_developer = db.session.query(Developer.name, func.avg(Review.rating).label('Average Rating')).filter(Review.game_key == Game.key, Game.developer_key == Developer.key, Review.date_key == Date.key, Date.month_name == 'May').group_by(Developer.key, Developer.name).order_by(func.avg(Review.rating).desc()).all()

    month_total = db.session.query(Game.name, func.count(User.key).label('Total Reviewers')).filter(Review.game_key == Game.key, Review.user_key == User.key, Review.date_key == Date.key, Date.month_name == 'May').group_by(Game.key, Game.name).order_by(func.count(User.key).desc()).all()

    return render_template('analysis.html', avg_rating = avg_rating, avg_developer = avg_developer, month_total = month_total)


if __name__ == '__main__':
    # game_scrap = GameScrapper()
    # add_game()
    app.run(debug=True)