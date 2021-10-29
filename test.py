from bs4 import BeautifulSoup
import requests
import re
from app import Review, db

def link_input():
    print("Input the website link:")
    weblink = input(">")

    get_html(weblink)

def get_html(html_link: str):
    html_text = requests.get(f'{html_link}').text
    soup = BeautifulSoup(html_text, 'lxml')

    get_game_info(soup, html_link)

def get_game_info(soup: BeautifulSoup, html_link: str):
    game_link = html_link
    game_id = re.search(r"\/[0-9]+\/", game_link).group().replace('/','')
    game_name = soup.find('div', id='appHubAppName').text.strip()
    game_release = soup.find('div', class_='date').text.strip()
    game_dev = soup.find('div', id='developers_list').a.text.strip()
    game_cat = soup.find('div', id='genresAndManufacturer')
    game_cat = game_cat.find_all('a')
    game_cat_list = []

    for cat in game_cat:
        if(cat.parent.get('id') == 'genresAndManufacturer'):
            game_cat_list.append(cat.text)


    game_dict = {'id':game_id, 'name':game_name, 'release':game_release, 'developer':game_dev, 'category':game_cat}

    print(game_cat_list)

if __name__=='__main__':
    link_input()