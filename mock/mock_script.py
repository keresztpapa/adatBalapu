from faker import Faker
from coolname import generate
import random
faker = Faker(locale='en_US')


def generate_Publisher():
    print(faker.phone_number())
    print(faker.address())
    print(faker.company())

def gen_genres(book_isbn:int):
    genres = ["Fantasy","Adventure","Romance","Contemporary","Dystopian","Mystery","Horror","Thriller","Paranormal","Historical fiction","Science Fiction","Children’s" ,"Memoir","Cookbook","Art","Self-help","Development","Motivational","Health","History","Travel","Guide / How-to","Families & Relationships","Humor"]

def author():
    print(faker.name())

def store():
    sql = f"INSERT INTO uzlet (cim, nev) VALUES ({faker.company()}, {faker.address()});"
    
def user():
    role = ["admin", "guest", "user"]
    f_name = faker.first_name()
    s_name = faker.last_name()
    email = f_name+'_'+s_name+'@gmail.com'
    passwd = faker.word()
    print(faker.address())
    print(faker.phone_number())


def book():
    title = ' '.join(generate())
    title.capitalize()
    cover = ["soft-cover","hard-cover", "ebook"]
    price = faker.random_number(digits=4)
    isbn = faker.random_number(digits=9)
    page_number = faker.random_number(digits=3)
    sql = f"INSERT INTO konyv (isbn, boritokep, ar, kotes, cim, oldalszam) VALUES ({isbn}, {None}, {price}, {cover[random.randint(0, 2)]}, {title}, {page_number});"
    

def who_and_when_published(comp_name:str, book_isbn:int):
    faker.date()

def author_of_book(auth_name:str, book_isbn:int):
    pass

def favourite(book_isbn:int, mail:str):
    pass

def rating(book_isbn:int, mail:str,rate:int, text:str):
    pass

def cart():
    pass