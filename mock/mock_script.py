from faker import Faker
from coolname import generate
from wonderwords import RandomWord
import random
import oracledb
from datetime import datetime
faker = Faker(locale='en_US')
r = RandomWord()

#dsn_tns = cx_Oracle.makedsn('localhost', '1521', service_name='xe')
#conn = cx_Oracle.connect(user=r'system', password='oracle', dsn=dsn_tns)
#connection = cx_Oracle.connect(user="system", password="oracle", dsn=dsn_tns)
#con = cx_Oracle.connect(user=r'system', password='oracle', dsn=dsn_tns)

con = oracledb.connect(user="SCOTT", password="tiger", host="localhost", port=1521, service_name="xe")
cursor = con.cursor()

sql_delete = f"DELETE FROM uzlet"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM konyv"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM kiado"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM kiadta"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM szerzoje"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM mufaja"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM felhasznalo"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM kedvence"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM ertekeles"
cursor.execute(sql_delete)
sql_delete = f"DELETE FROM tetel"
cursor.execute(sql_delete)
con.commit()

def test(str):
  cursor.execute(f"SELECT * FROM {str}")
  myresult = cursor.fetchall()
  i = 0
  for x in myresult:
    i = i+1
    print(f"{i}.{str} ,   {x}")


def publisher():
    sql = f"INSERT INTO kiado (nev, cim, telefon) VALUES ('{faker.company()}', '{faker.address()}', '{faker.phone_number()[0:-4]}')"
    cursor.execute(sql)

def genres(book_isbn):
    genres = ["Fantasy","Adventure","Romance","Contemporary","Dystopian","Mystery","Horror","Thriller","Paranormal","Historical fiction","Science Fiction","Children’s" ,"Memoir","Cookbook","Art","Self-help","Development","Motivational","Health","History","Travel","Guide / How-to","Families & Relationships","Humor"]
    sql = f"INSERT INTO mufaja (mufajnev, isbn) VALUES ('{genres[random.randint(0,len(genres)-1)]}', '{book_isbn}')"
    cursor.execute(sql)

def author(nev:str, isbn):
    sql = f"INSERT INTO szerzoje (szerzonev, isbn) VALUES ('{nev}', '{isbn}')"
    cursor.execute(sql)

def store():
    sql = f"INSERT INTO uzlet (cim, nev) VALUES ('{faker.company()}', '{faker.address()}')"
    cursor.execute(sql)
    
def user():
    role = ["admin", "guest", "user"]
    f_name = faker.first_name()
    s_name = faker.last_name()
    full_name = f_name+" "+s_name
    email = f_name+'_'+s_name+'@gmail.com'
    passwd = faker.word()
    sql = f"INSERT INTO felhasznalo (email, nev, jelszo, cim, telefon, szerep) VALUES ('{email}', '{full_name}', '{passwd}', '{faker.address()}', '{faker.phone_number()[0:-4]}', '{role[random.randint(0, len(role)-1)]}')"
    cursor.execute(sql)

def book():
    title = ' '.join(generate())
    title.capitalize()
    cover = ["soft-cover","hard-cover", "ebook"]
    price = faker.random_number(digits=4)
    page_number = faker.random_number(digits=3)
    sql = f"INSERT INTO konyv (isbn, ar, kotes, cim, oldalszam) VALUES ('{faker.isbn10()}', '{price}', '{cover[random.randint(0, len(cover)-1)]}', '{title}', '{page_number}')"
    cursor.execute(sql)

def who_and_when_published(comp_name:str, book_isbn):
    sql = f"INSERT INTO kiadta (nev, isbn, mikor) VALUES ('{comp_name}','{book_isbn}','{random.randint(1950,2023)}')"
    cursor.execute(sql)

def favourite(book_isbn, mail:str):
    sql = f"INSERT INTO kedvence (isbn, email) VALUES ('{book_isbn}', '{mail}')"
    cursor.execute(sql)

def rating(book_isbn, mail:str):
    sql = f"INSERT INTO ertekeles (isbn, email, pontszam, megjegyzes) VALUES ('{book_isbn}', '{mail}', '{random.randint(0,6)}', '{r.word( include_parts_of_speech=['nouns', 'adjectives'])}')"
    cursor.execute(sql)

def cart(x,email, isbn, darab):
    sql = f"INSERT INTO tetel (id,email, isbn, darabszam) VALUES ('{x}','{email}', '{isbn}', '{darab}')"
    cursor.execute(sql)

global konyv_isbn
global publish_name
global auth_name
global email_ls
global id_counter

id_counter = 0
konyv_isbn = []
publish_name = []
auth_name = []
email_ls = []

for i in range(10):
    publisher()
    store()
    book()
    user()

for row in cursor.execute("SELECT isbn FROM konyv"):
    konyv_isbn.append(row[0])

for row in cursor.execute("SELECT nev FROM kiado"):
    publish_name.append(row[0])

for row in cursor.execute("SELECT szerzonev FROM szerzoje"):
    auth_name.append(row[0])

for row in cursor.execute("SELECT email FROM felhasznalo"):
    email_ls.append(row[0])

for i in range(len(konyv_isbn)):
    author(faker.name(), konyv_isbn[i])
    genres(konyv_isbn[i])
    who_and_when_published(publish_name[random.randint(0, len(publish_name)-1)], konyv_isbn[i])

for i in range(len(email_ls)):
    if random.randint(0,9) != 0:
        favourite(konyv_isbn[random.randint(0,len(konyv_isbn)-1)],email_ls[i])
    if random.randint(0,9) != 0 and random.randint(0,9) != 1 and random.randint(0,9) != 2 and random.randint(0,9) != 3 :
        rating(konyv_isbn[random.randint(0,len(konyv_isbn)-1)],email_ls[i])
    
for i in range(10):
    cart(id_counter,email_ls[random.randint(0,len(email_ls)-1)],konyv_isbn[random.randint(0,len(konyv_isbn)-1)], random.randint(0,3))
    id_counter = id_counter + 1 

test("uzlet")
test("konyv")
test("kiado")
test("kiadta")
test("szerzoje")
test("mufaja")
test("felhasznalo")
test("kedvence")
test("ertekeles")
test("tetel")
con.commit()
con.close()