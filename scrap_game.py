from bs4 import BeautifulSoup
import requests
import re
import datetime

class GameScrapper:

    def __init__(self):
        print('Game scrapper is on')

    def link_input(self):
        print("Input the website link:")
        weblink = input(">")

        game_dict, review_list, game_cat_list = self.get_html(weblink)
        return game_dict, review_list, game_cat_list

    def get_html(self, html_link: str):
        html_text = requests.get(f'{html_link}').text
        soup = BeautifulSoup(html_text, 'lxml')

        game_dict, review_list, game_cat_list = self.get_game_info(soup, html_link)
        return game_dict, review_list, game_cat_list

    def get_game_info(self, soup: BeautifulSoup, html_link: str):
        game_link = html_link
        game_id = re.search(r"\/[0-9]+\/", game_link).group().replace('/','')
        game_name = soup.find('div', id='appHubAppName').text.strip()
        game_release = soup.find('div', class_='date').text.strip()
        game_dev = soup.find('div', id='developers_list').a.text.strip()
        game_cat = soup.find('div', id='genresAndManufacturer')
        game_cat = game_cat.find('span')
        game_cat = game_cat.find_all('a')
        game_cat_list = []

        for cat in game_cat:
            # if(cat.parent.get('id') == 'genresAndManufacturer'):
            game_cat_list.append(cat.text)

        game_dict = {'id':game_id, 'name':game_name, 'release':game_release, 'developer':game_dev, 'category':game_cat}

        review_list = self.get_game_review(game_id)

        return game_dict, review_list, game_cat_list

    def get_game_review(self,game_id: str):
        review_link = requests.get('https://steamcommunity.com/app/'+game_id+'/reviews/?p=1&browsefilter=mostrecent').text
        soup_review = BeautifulSoup(review_link, 'lxml')

        review_list = []
        review_cards = soup_review.find_all('div', class_='apphub_Card')

        for review in review_cards:
            review_name = review.find('div', class_='apphub_friend_block_container').text.strip()
            review_name = review_name.partition('\n')[0]
            review_link= review.find('div', class_='apphub_friend_block').a['href'].strip()
            review_rating = review.find('div', class_='title').text.strip()
            review_date = review.find('div', class_='date_posted').text.strip()
            review_date = review_date.replace('Posted: ','')

            formatted_date = ""
            if ',' not in review_date:
                curr_year = datetime.date.today().year
                formatted_date = review_date + ', ' + str(curr_year)
            else:
                formatted_date = review_date.copy()
            
            formatted_date = datetime.datetime.strptime(formatted_date,'%d %B, %Y').date()
            review_content = review.find('div', class_='apphub_CardTextContent').text.strip()
            review_content = review_content.partition('\n')[2].strip()

            review_dict = {'name': review_name, 'review_date': formatted_date, 'rating': review_rating, 'review_content': review_content, 'user_link': review_link}

            review_list.append(review_dict)
        
        return review_list



    
