from faker import Faker
from coolname import generate
from wonderwords import RandomWord
import random
faker = Faker(locale='en_US')
r = RandomWord()

def generate_Publisher():
    print(faker.phone_number())
    print(faker.address())
    print(faker.company())

def gen_genres(book_isbn):
    genres = ["Fantasy","Adventure","Romance","Contemporary","Dystopian","Mystery","Horror","Thriller","Paranormal","Historical fiction","Science Fiction","Children’s" ,"Memoir","Cookbook","Art","Self-help","Development","Motivational","Health","History","Travel","Guide / How-to","Families & Relationships","Humor"]
    sql = f"INSERT INTO mufaja (mufajnev, isbn) VALUES ({genres[random.randint(0,len(genres)-1)]}, {book_isbn});"

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
    sql = f"INSERT INTO felhasznalo (email, nev, jelszo, cim, telefon, szerep) VALUES ({email}, {f_name+' '+s_name}, {passwd}, {faker.address(), {faker.phone_number()}, {role[random.randint(0, len(role)-1)]}});"


def book():
    title = ' '.join(generate())
    title.capitalize()
    cover = ["soft-cover","hard-cover", "ebook"]
    price = faker.random_number(digits=4)
    page_number = faker.random_number(digits=3)
    sql = f"INSERT INTO konyv (isbn, boritokep, ar, kotes, cim, oldalszam) VALUES ({faker.isbn10()}, {None}, {price}, {cover[random.randint(0, len(cover)-1)]}, {title}, {page_number});"
    

def who_and_when_published(comp_name:str, book_isbn, book_date):
    sql = f"INSERT INTO kiadta (nev, isbn, mikor) VALUES ({comp_name},{book_isbn}, {book_date});"

def author_of_book(auth_name:str, book_isbn):
    pass

def favourite(book_isbn, mail:str):
    sql = f"INSERT INTO kedvence (isbn, email) VALUES ({book_isbn}, {mail});"

def rating(book_isbn, mail:str):
    sql = f"INSERT INTO ertekeles (isbn, email, pontszam, megjegyzes) VALUES ({book_isbn}, {mail}, {random.randint(1,6)}, {r.word( include_parts_of_speech=['nouns', 'adjectives'])});"

def cart():
    pass


