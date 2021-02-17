import requests
from bs4 import BeautifulSoup
import subprocess
from notify import notification
import argparse
parser = argparse.ArgumentParser()

parser.add_argument(
    '-d',
    type=str,
    dest='DE'
)

parser.add_argument(
    '-n',
    type=str,
    dest='NL'
)

args = parser.parse_args()

# ┌──────────────────────────────┐
# │ The URL which we are getting │
# └──────────────────────────────┘
URL = 'https://mehr-tanken.de/tankstelle/6ca71ccf2/freie-tankstelle-husers-burgermeister-esders-str-1-49733-rutenbrock#s95_e5' 
URNL = 'https://www.argos.nl/tankstation/argos-tweede-exloermond/'
pageNL = requests.get(URNL, headers={'Cache-Control': 'no-cache'})
page = requests.get(URL, headers={'Cache-Control': 'no-cache'})
soup = BeautifulSoup(page.content, 'html.parser')
soupNL = BeautifulSoup(pageNL.content, 'html.parser')

results = soup.find(href = "#s95_e5")
price = results.find(class_ = "PriceList__itemPrice h1")

first_digit = price.text.strip()[0:4]
last_digit = results.find(class_ = "sup")
last_digit = last_digit.text.strip()
price = str(first_digit) + str(last_digit)

itemNL = soupNL.find_all('div', class_='col col3 price-item')[1]
priceNL = itemNL.find(class_='price')
first_digitNL = priceNL.text.strip()[0:4]
last_digitNL = itemNL.find('sup')
last_digitNL = last_digitNL.text.strip()
priceNL = first_digitNL + last_digitNL

if args.DE:
    DE = print("DE: €" + price)
elif args.NL:
    NL = print("NL: €" + priceNL) 

