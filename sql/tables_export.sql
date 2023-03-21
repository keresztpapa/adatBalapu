--------------------------------------------------------
--  File created - vas�rnap-m�rcius-12-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERTEKELES
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ERTEKELES" 
   (	"ISBN" VARCHAR2(13 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PONTSZAM" NUMBER(1,0), 
	"MEGJEGYZES" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "SCOTT"."FELHASZNALO" 
   (	"EMAIL" VARCHAR2(100 BYTE), 
	"NEV" VARCHAR2(100 BYTE), 
	"JELSZO" VARCHAR2(32 BYTE), 
	"CIM" VARCHAR2(100 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"SZEREP" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KEDVENCE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."KEDVENCE" 
   (	"ISBN" VARCHAR2(13 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KIADO
--------------------------------------------------------

  CREATE TABLE "SCOTT"."KIADO" 
   (	"NEV" VARCHAR2(100 BYTE), 
	"CIM" VARCHAR2(100 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KIADTA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."KIADTA" 
   (	"NEV" VARCHAR2(100 BYTE), 
	"ISBN" VARCHAR2(13 BYTE), 
	"MIKOR" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KONYV
--------------------------------------------------------

  CREATE TABLE "SCOTT"."KONYV" 
   (	"ISBN" VARCHAR2(13 BYTE), 
	"BORITOKEP" BLOB, 
	"AR" NUMBER(10,-1), 
	"KOTES" VARCHAR2(20 BYTE), 
	"CIM" VARCHAR2(100 BYTE), 
	"OLDALSZAM" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("BORITOKEP") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table MUFAJA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MUFAJA" 
   (	"MUFAJNEV" VARCHAR2(100 BYTE), 
	"ISBN" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALGRADE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SALGRADE" 
   (	"GRADE" NUMBER, 
	"LOSAL" NUMBER, 
	"HISAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SZERZOJE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SZERZOJE" 
   (	"SZERZONEV" VARCHAR2(100 BYTE), 
	"ISBN" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TETEL
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TETEL" 
   (	"ID" NUMBER, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"ISBN" VARCHAR2(13 BYTE), 
	"DARABSZAM" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZLET
--------------------------------------------------------

  CREATE TABLE "SCOTT"."UZLET" 
   (	"CIM" VARCHAR2(100 BYTE), 
	"NEV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.ERTEKELES
SET DEFINE OFF;
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-195-18039-X','Connor_Wilson@gmail.com','5','loggia');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-416-84337-9','Elizabeth_Simmons@gmail.com','6','vermicelli');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-4801-1287-9','Michele_Summers@gmail.com','5','skirt');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-416-84337-9','Michelle_Copeland@gmail.com','3','month');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-72805-860-0','Pamela_Harris@gmail.com','0','newsprint');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-8401-9442-0','Rachel_Jackson@gmail.com','4','tired');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-72805-860-0','Ryan_Ortiz@gmail.com','1','prosecutor');
REM INSERTING into SCOTT.FELHASZNALO
SET DEFINE OFF;
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Rachel_Jackson@gmail.com','Rachel Jackson','hundred','279 Timothy Mountain Apt. 593
West Travisland, ID 92811','(320)906-2618x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Antonio_Davis@gmail.com','Antonio Davis','night','4600 Ross Fort Suite 906
South Seanside, FL 90537','+1-566-164-8454x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Michelle_Copeland@gmail.com','Michelle Copeland','media','06305 Kari Highway
West Randy, VI 10568','587.665.9755','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Stacy_Bell@gmail.com','Stacy Bell','week','9935 Zachary Summit
Anneport, NJ 78742','001-117-839-7052','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Ryan_Ortiz@gmail.com','Ryan Ortiz','although','USCGC Ramirez
FPO AA 98379','175429','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Pamela_Harris@gmail.com','Pamela Harris','job','1959 Amanda Centers Apt. 202
Michelleview, MA 76292','881-378-0928','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Elizabeth_Simmons@gmail.com','Elizabeth Simmons','mouth','297 Michael Mews Apt. 966
Sabrinamouth, GU 52589','001-707-059-4906','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Connor_Wilson@gmail.com','Connor Wilson','leader','USCGC Lee
FPO AE 21022','001-756-830-2319','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Michele_Summers@gmail.com','Michele Summers','shake','7082 Boyd Corners
Patriciachester, RI 22628','(085)460-6026x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Martin_Collins@gmail.com','Martin Collins','then','78188 Kim Rapids
Diazport, MI 08296','148-282-0967x7','user');
REM INSERTING into SCOTT.KEDVENCE
SET DEFINE OFF;
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-62783-834-1','Antonio_Davis@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-07-457842-1','Connor_Wilson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-10-326403-5','Elizabeth_Simmons@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-12-811886-5','Michele_Summers@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-07-457842-1','Michelle_Copeland@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-12-811886-5','Pamela_Harris@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-72805-860-0','Rachel_Jackson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-12-811886-5','Ryan_Ortiz@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-10-326403-5','Stacy_Bell@gmail.com');
REM INSERTING into SCOTT.KIADO
SET DEFINE OFF;
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hawkins, Compton and Gonzalez','2163 Herrera Mission
Lake Coreyberg, MP 23603','(866)724-5520');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Pitts-Weaver','314 Jonathan Turnpike
Juliefort, AS 31956','487.645.5904x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('David-Dominguez','843 Laura Fall Apt. 107
South Deborah, OR 67550','+1-400-517-2921x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Gilbert, Sanchez and Macias','14665 Mcmahon Ways
New Ashleybury, AZ 54241','001-417-785-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Davis-Whitney','7312 William Gardens Apt. 634
East Janiceborough, MI 70430','173-820-3685');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Johnson Group','84099 Kenneth Parkways Suite 750
West Stephanie, OK 14982','+1-752-240-7938');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Mitchell PLC','701 Laura Garden Apt. 979
Shaffertown, FL 78384','(969)625-5514x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Mann, Carr and Lopez','755 Andrea Lights Suite 552
Blakebury, GU 91719','001-294-651-5917');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hayes Group','84115 Roberts Forks
Lunaberg, MS 30957','001-426-707-4795');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Roberson-Allen','112 Gerald Lakes Suite 062
North Cody, AR 47477','300-731-3146x7');
REM INSERTING into SCOTT.KIADTA
SET DEFINE OFF;
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('David-Dominguez','0-10-326403-5','2007');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Davis-Whitney','0-416-84337-9','1956');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Davis-Whitney','1-4801-1287-9','1991');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Hawkins, Compton and Gonzalez','1-72805-860-0','1993');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Mann, Carr and Lopez','1-03-671700-3','1990');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Mitchell PLC','1-195-18039-X','1972');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Roberson-Allen','0-07-457842-1','1959');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Roberson-Allen','0-12-811886-5','2006');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Roberson-Allen','0-8401-9442-0','2023');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Roberson-Allen','1-62783-834-1','1983');
REM INSERTING into SCOTT.KONYV
SET DEFINE OFF;
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-12-811886-5','7430','soft-cover','mottled simple hornet of gallantry','632');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-72805-860-0','440','hard-cover','qualified xanthic lizard of justice','624');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-10-326403-5','5740','hard-cover','zealous impartial chameleon of reading','607');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-62783-834-1','1360','ebook','new shiny hornet of modernism','302');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-8401-9442-0','7920','soft-cover','imposing groundhog of imaginary cookies','135');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-07-457842-1','3800','soft-cover','romantic practical doberman of faith','752');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-195-18039-X','7670','hard-cover','idealistic savvy quail of infinity','150');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-416-84337-9','8900','ebook','helpful illegal adder from asgard','75');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-03-671700-3','4000','ebook','independent umber snake of imagination','584');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-4801-1287-9','4000','ebook','electric crystal jackdaw of spirit','837');
REM INSERTING into SCOTT.MUFAJA
SET DEFINE OFF;
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Adventure','1-72805-860-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Art','0-07-457842-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Dystopian','1-195-18039-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Families & Relationships','1-4801-1287-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Fantasy','0-12-811886-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Historical fiction','0-10-326403-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Mystery','1-62783-834-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','0-8401-9442-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Travel','0-416-84337-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Travel','1-03-671700-3');
REM INSERTING into SCOTT.SALGRADE
SET DEFINE OFF;
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('1','700','1200');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('2','1201','1400');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('3','1401','2000');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('4','2001','3000');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('5','3001','9999');
REM INSERTING into SCOTT.SZERZOJE
SET DEFINE OFF;
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brenda Schultz','1-62783-834-1');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Courtney Allen','0-10-326403-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Deborah Irwin','1-195-18039-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('James Morrow','1-4801-1287-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Joyce Fox','1-72805-860-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Julie Santiago','1-03-671700-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Kara Carter','0-8401-9442-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Roberto Hicks','0-12-811886-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Timothy Simmons','0-416-84337-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Valerie Evans','0-07-457842-1');
REM INSERTING into SCOTT.TETEL
SET DEFINE OFF;
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('0','Michele_Summers@gmail.com','0-8401-9442-0','1');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('1','Connor_Wilson@gmail.com','1-62783-834-1','2');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('2','Pamela_Harris@gmail.com','0-10-326403-5','3');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('3','Michele_Summers@gmail.com','1-4801-1287-9','0');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('4','Martin_Collins@gmail.com','0-10-326403-5','3');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('5','Antonio_Davis@gmail.com','1-4801-1287-9','2');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('6','Ryan_Ortiz@gmail.com','1-62783-834-1','2');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('7','Elizabeth_Simmons@gmail.com','0-416-84337-9','3');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('8','Elizabeth_Simmons@gmail.com','0-416-84337-9','0');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,DARABSZAM) values ('9','Stacy_Bell@gmail.com','1-4801-1287-9','0');
REM INSERTING into SCOTT.UZLET
SET DEFINE OFF;
Insert into SCOTT.UZLET (CIM,NEV) values ('Taylor, Thomas and Wright','Unit 5696 Box 4823
DPO AP 46757');
Insert into SCOTT.UZLET (CIM,NEV) values ('Franklin-Dean','02161 Sanchez Terrace Suite 089
Wilsonton, MA 57771');
Insert into SCOTT.UZLET (CIM,NEV) values ('Cisneros, Smith and Perry','6349 Wilson Cliff Apt. 168
Port Jasonfort, WV 04518');
Insert into SCOTT.UZLET (CIM,NEV) values ('Harrington-Flores','7089 Green Pine
Diazton, HI 80610');
Insert into SCOTT.UZLET (CIM,NEV) values ('Marsh, Wilcox and Summers','85962 Jennifer Ports Suite 573
Charlesside, IL 09425');
Insert into SCOTT.UZLET (CIM,NEV) values ('Murphy Inc','0240 Blair Fields
Port Michael, AK 42369');
Insert into SCOTT.UZLET (CIM,NEV) values ('Woodard and Sons','1921 Sheri Plains
Johnsonstad, FM 10087');
Insert into SCOTT.UZLET (CIM,NEV) values ('Smith, Drake and Carter','USCGC Gibson
FPO AA 21440');
Insert into SCOTT.UZLET (CIM,NEV) values ('Green Group','87557 Rivera Pines Apt. 079
Jamesfort, SD 12155');
Insert into SCOTT.UZLET (CIM,NEV) values ('Ramirez and Sons','725 Rodgers Crossing
Lindatown, NH 95687');
--------------------------------------------------------
--  DDL for Index ERTEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."ERTEK_PK" ON "SCOTT"."ERTEKELES" ("EMAIL", "ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USR_EMAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."USR_EMAIL_PK" ON "SCOTT"."FELHASZNALO" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KDVNC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."KDVNC_PK" ON "SCOTT"."KEDVENCE" ("EMAIL", "ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NEV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."NEV_PK" ON "SCOTT"."KIADO" ("NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KDTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."KDTA_PK" ON "SCOTT"."KIADTA" ("NEV", "ISBN", "MIKOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KNYV_ISBN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."KNYV_ISBN_PK" ON "SCOTT"."KONYV" ("ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MFJ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."MFJ_PK" ON "SCOTT"."MUFAJA" ("MUFAJNEV", "ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZRZJ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SZRZJ_PK" ON "SCOTT"."SZERZOJE" ("SZERZONEV", "ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TTL_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."TTL_ID_PK" ON "SCOTT"."TETEL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZL_CIM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."UZL_CIM_PK" ON "SCOTT"."UZLET" ("CIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ERTEKELES
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ERTEKELES" ADD CONSTRAINT "ERTEK_PK" PRIMARY KEY ("EMAIL", "ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."ERTEKELES" MODIFY ("PONTSZAM" CONSTRAINT "ERTEK_PONTSZAM_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "SCOTT"."FELHASZNALO" ADD CONSTRAINT "USR_EMAIL_PK" PRIMARY KEY ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."FELHASZNALO" MODIFY ("SZEREP" CONSTRAINT "USR_SZEREP_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FELHASZNALO" MODIFY ("TELEFON" CONSTRAINT "USR_TELEFON_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FELHASZNALO" MODIFY ("JELSZO" CONSTRAINT "USR_JELSZO_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."FELHASZNALO" MODIFY ("NEV" CONSTRAINT "USR_NEV_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KEDVENCE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KEDVENCE" ADD CONSTRAINT "KDVNC_PK" PRIMARY KEY ("EMAIL", "ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KIADO
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KIADO" ADD CONSTRAINT "NEV_PK" PRIMARY KEY ("NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."KIADO" MODIFY ("CIM" CONSTRAINT "CIM_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KIADTA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KIADTA" ADD CONSTRAINT "KDTA_PK" PRIMARY KEY ("NEV", "ISBN", "MIKOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KONYV
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KONYV" ADD CONSTRAINT "KNYV_ISBN_PK" PRIMARY KEY ("ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."KONYV" MODIFY ("CIM" CONSTRAINT "KNYV_CIM_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."KONYV" MODIFY ("AR" CONSTRAINT "KNYV_AR_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUFAJA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MUFAJA" ADD CONSTRAINT "MFJ_PK" PRIMARY KEY ("MUFAJNEV", "ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SZERZOJE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SZERZOJE" ADD CONSTRAINT "SZRZJ_PK" PRIMARY KEY ("SZERZONEV", "ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TETEL
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TETEL" ADD CONSTRAINT "TTL_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."TETEL" MODIFY ("DARABSZAM" CONSTRAINT "TTL_DARABSZAM_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TETEL" MODIFY ("ISBN" CONSTRAINT "TTL_ISBN_NN" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TETEL" MODIFY ("EMAIL" CONSTRAINT "TTL_EMAIL_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UZLET
--------------------------------------------------------

  ALTER TABLE "SCOTT"."UZLET" ADD CONSTRAINT "UZL_CIM_PK" PRIMARY KEY ("CIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."UZLET" MODIFY ("NEV" CONSTRAINT "UZL_NEV_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ERTEKELES
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ERTEKELES" ADD CONSTRAINT "ERTEK_EMAIL_FK" FOREIGN KEY ("EMAIL")
	  REFERENCES "SCOTT"."FELHASZNALO" ("EMAIL") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SCOTT"."ERTEKELES" ADD CONSTRAINT "ERTEK_ISBN_FK" FOREIGN KEY ("ISBN")
	  REFERENCES "SCOTT"."KONYV" ("ISBN") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KEDVENCE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KEDVENCE" ADD CONSTRAINT "KDVNC_EMAIL_FK" FOREIGN KEY ("EMAIL")
	  REFERENCES "SCOTT"."FELHASZNALO" ("EMAIL") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SCOTT"."KEDVENCE" ADD CONSTRAINT "KDVNC_ISBN_FK" FOREIGN KEY ("ISBN")
	  REFERENCES "SCOTT"."KONYV" ("ISBN") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KIADTA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."KIADTA" ADD CONSTRAINT "KDTA_ISBN_FK" FOREIGN KEY ("ISBN")
	  REFERENCES "SCOTT"."KONYV" ("ISBN") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SCOTT"."KIADTA" ADD CONSTRAINT "KDTA_NEV_FK" FOREIGN KEY ("NEV")
	  REFERENCES "SCOTT"."KIADO" ("NEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUFAJA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MUFAJA" ADD CONSTRAINT "MFJ_ISBN_FK" FOREIGN KEY ("ISBN")
	  REFERENCES "SCOTT"."KONYV" ("ISBN") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SZERZOJE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SZERZOJE" ADD CONSTRAINT "SZRZJ_ISBN_FK" FOREIGN KEY ("ISBN")
	  REFERENCES "SCOTT"."KONYV" ("ISBN") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TETEL
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TETEL" ADD CONSTRAINT "TTL_EMAIL_FK" FOREIGN KEY ("EMAIL")
	  REFERENCES "SCOTT"."FELHASZNALO" ("EMAIL") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SCOTT"."TETEL" ADD CONSTRAINT "TTL_ISBN_FK" FOREIGN KEY ("ISBN")
	  REFERENCES "SCOTT"."KONYV" ("ISBN") ON DELETE CASCADE ENABLE;
