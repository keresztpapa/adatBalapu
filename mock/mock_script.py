from faker import Faker
from coolname import generate
from wonderwords import RandomWord
import random
import oracledb
faker = Faker(locale='en_US')
r = RandomWord()

#dsn_tns = cx_Oracle.makedsn('localhost', '1521', service_name='xe')
#conn = cx_Oracle.connect(user=r'system', password='oracle', dsn=dsn_tns)
#connection = cx_Oracle.connect(user="system", password="oracle", dsn=dsn_tns)
#con = cx_Oracle.connect(user=r'system', password='oracle', dsn=dsn_tns)

con = oracledb.connect(user="system", password="oracle", host="localhost", port=1521, service_name="xe")
cursor = con.cursor()

"""
cursor.execute("CREATE TABLE uzlet (cim VARCHAR2(100) CONSTRAINT uzl_cim_pk PRIMARY KEY, nev VARCHAR2(100) CONSTRAINT uzl_nev_nn NOT NULL);")
cursor.execute("CREATE TABLE konyv (isbn VARCHAR2(13) CONSTRAINT knyv_isbn_pk PRIMARY KEY,boritokep BLOB,ar NUMBER(10, -1) CONSTRAINT knyv_ar_nn NOT NULL,kotes VARCHAR2(20),cim VARCHAR2(100) CONSTRAINT knyv_cim_nn NOT NULL,oldalszam NUMBER(5));")
cursor.execute("CREATE TABLE kiado (nev VARCHAR2(100) CONSTRAINT nev_pk PRIMARY KEY,cim VARCHAR2(100) CONSTRAINT cim_nn NOT NULL,telefon VARCHAR2(20));")
cursor.execute("CREATE TABLE kiadta (nev VARCHAR2(100), isbn VARCHAR2(13),mikor DATE,CONSTRAINT kdta_pk PRIMARY KEY (nev, isbn, mikor),CONSTRAINT kdta_nev_fk FOREIGN KEY (nev) REFERENCES kiado(nev),CONSTRAINT kdta_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE);")
cursor.execute("CREATE TABLE szerzoje (szerzonev VARCHAR2(100),isbn VARCHAR2(13),CONSTRAINT szrzj_pk PRIMARY KEY (szerzonev, isbn),CONSTRAINT szrzj_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE);")
cursor.execute("CREATE TABLE mufaja ( mufajnev VARCHAR2(100),isbn VARCHAR2(13),CONSTRAINT mfj_pk PRIMARY KEY (mufajnev, isbn),CONSTRAINT mfj_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE);")
cursor.execute("CREATE TABLE felhasznalo( email VARCHAR2(100) CONSTRAINT usr_email_pk PRIMARY KEY,nev VARCHAR2(100) CONSTRAINT usr_nev_nn NOT NULL,jelszo VARCHAR2(32) CONSTRAINT usr_jelszo_nn NOT NULL,cim VARCHAR(100),telefon VARCHAR(20) CONSTRAINT usr_telefon_nn NOT NULL,szerep VARCHAR(10) CONSTRAINT usr_szerep_nn NOT NULL);")
cursor.execute("CREATE TABLE kedvence ( isbn VARCHAR2(13),email VARCHAR2(100),CONSTRAINT kdvnc_pk PRIMARY KEY (email, isbn),CONSTRAINT kdvnc_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE,CONSTRAINT kdvnc_email_fk FOREIGN KEY (email) REFERENCES felhasznalo(email) ON DELETE CASCADE);")
cursor.execute("CREATE TABLE ertekeles ( isbn VARCHAR2(13),email VARCHAR2(100),pontszam NUMBER(1) CONSTRAINT ertek_pontszam_nn NOT NULL,megjegyzes VARCHAR2(500),CONSTRAINT ertek_pk PRIMARY KEY (email, isbn),CONSTRAINT ertek_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE,CONSTRAINT ertek_email_fk FOREIGN KEY (email) REFERENCES felhasznalo(email) ON DELETE CASCADE);")
cursor.execute("CREATE TABLE tetel (  id NUMBER CONSTRAINT ttl_id_pk PRIMARY KEY,   email VARCHAR2(100) CONSTRAINT ttl_email_nn NOT NULL,  isbn VARCHAR2(13) CONSTRAINT ttl_isbn_nn NOT NULL,  mikor DATE,  hova VARCHAR2(100),darabszam NUMBER(2, 0) CONSTRAINT ttl_darabszam_nn NOT NULL, CONSTRAINT ttl_email_fk FOREIGN KEY (email) REFERENCES felhasznalo(email) ON DELETE CASCADE, CONSTRAINT ttl_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE);")

cursor.execute("DROP TABLE uzlet CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE konyv CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE kiado CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE kiadta CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE szerzoje CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE mufaja CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE felhasznalo CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE kedvence CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE ertekeles CASCADE CONSTRAINTS PURGE;")
cursor.execute("DROP TABLE tetel CASCADE CONSTRAINTS PURGE;")
"""
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


con.close()