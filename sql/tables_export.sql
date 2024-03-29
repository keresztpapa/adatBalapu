--------------------------------------------------------
--  File created - szerda-m�rcius-22-2023   
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
	"BORITOKEP" VARCHAR2(200), 
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
	"MIKOR" DATE, 
	"HOVA" VARCHAR2(100 BYTE), 
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
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-9847438-5-5','Aaron_Baker@gmail.com','5','lunchmeat');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-7449-7965-X','Aaron_Jackson@gmail.com','0','census');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-4382-8868-9','Alyssa_Gonzalez@gmail.com','1','journal');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-138-01647-0','Amber_Valenzuela@gmail.com','5','silver');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-369-80394-9','Ashlee_Hardy@gmail.com','0','reluctance');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-14-339473-8','Austin_Bell@gmail.com','6','gelatin');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-674-92399-5','Benjamin_Aguilar@gmail.com','5','span');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-960962-52-3','Brian_Cardenas@gmail.com','2','zero');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-293-55234-7','Bridget_Martin@gmail.com','1','statement');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-8084-0632-9','Caitlyn_Castillo@gmail.com','2','precedence');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-381-89366-9','Casey_Costa@gmail.com','1','runner');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-339-99775-3','Darius_Wilcox@gmail.com','2','form');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-185-75693-0','David_Taylor@gmail.com','0','beaver');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-682-60823-8','Deborah_Townsend@gmail.com','4','certification');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-339-99775-3','Diana_Swanson@gmail.com','1','notepad');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-03-784706-6','Gary_Stewart@gmail.com','3','ephemeris');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-422-65084-6','Grace_Parker@gmail.com','6','sloth');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-11-245363-5','James_Brown@gmail.com','4','song');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-998414-74-4','James_Jones@gmail.com','5','mankind');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-88765-109-7','Jennifer_Patterson@gmail.com','2','reversal');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-339-99775-3','Jennifer_Price@gmail.com','3','experimentation');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-226-58671-6','Jennifer_Stephenson@gmail.com','2','plagiarism');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-7449-7965-X','Jessica_Perry@gmail.com','4','diaphragm');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-226-58671-6','Jorge_Murphy@gmail.com','2','seemly');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-5351-9430-8','Joseph_Cox@gmail.com','3','marble');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-74356-844-4','Kaitlin_Walsh@gmail.com','1','enrollment');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-185-75693-0','Katelyn_Martin@gmail.com','1','ophthalmologist');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-935398-09-1','Kayla_Smith@gmail.com','2','translation');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-63443-207-X','Kent_Conner@gmail.com','4','existence');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-4382-8868-9','Kevin_Anderson@gmail.com','6','trip');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-77428-130-9','Lauren_Nielsen@gmail.com','4','hero');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-293-55234-7','Leslie_Oconnell@gmail.com','0','twist');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-369-80394-9','Madison_Lowe@gmail.com','5','savage');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-89340-018-1','Maria_Parker@gmail.com','6','conduct');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-119-52131-9','Maria_Scott@gmail.com','0','fireplace');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-308-86366-7','Marissa_Sanders@gmail.com','1','headquarters');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-87918-361-6','Martha_Shaw@gmail.com','2','carnation');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-4703-1305-7','Matthew_Richmond@gmail.com','5','kite');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-926692-82-8','Matthew_White@gmail.com','6','disembodiment');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-605-73005-9','Meagan_Vega@gmail.com','2','spiral');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-9985006-0-7','Melissa_Smith@gmail.com','3','soap');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-369-80394-9','Michael_Mckenzie@gmail.com','0','phrasing');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-381-89366-9','Michael_Thompson@gmail.com','1','savior');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-293-55234-7','Miranda_Hernandez@gmail.com','0','insectarium');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-339-99775-3','Natalie_Taylor@gmail.com','6','cytokine');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-4568-3005-8','Nicholas_Zamora@gmail.com','1','heifer');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-12-836233-2','Nicole_Moon@gmail.com','2','gopher');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-907139-00-0','Patrick_Andrews@gmail.com','6','whirlpool');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-8421-4639-3','Rebecca_Bishop@gmail.com','2','relief');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-631-06761-2','Rebecca_Espinoza@gmail.com','6','crane');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-08-057361-5','Rebecca_Houston@gmail.com','2','longing');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-04-255280-0','Richard_Mccoy@gmail.com','5','drawbridge');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-204-80137-1','Robert_Allen@gmail.com','1','wire');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-918573-84-0','Robert_Johnson@gmail.com','0','comfort');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-171-18855-2','Robert_Rocha@gmail.com','0','quince');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-907139-00-0','Sarah_Griffin@gmail.com','4','duel');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-369-80394-9','Shannon_Ochoa@gmail.com','4','headquarters');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-56304-974-0','Sharon_Thomas@gmail.com','0','pancreas');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-170-50075-7','Shawn_Owens@gmail.com','0','hop');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-01-942875-8','Steven_Salazar@gmail.com','0','abundance');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-907139-00-0','Theresa_Alvarez@gmail.com','3','gray');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('0-422-65084-6','Tiffany_Hunter@gmail.com','5','abortion');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-119-52131-9','Todd_Bean@gmail.com','6','barium');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-63443-207-X','Tony_Adams@gmail.com','3','nose');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-78482-193-4','Troy_Simpson@gmail.com','1','kazoo');
Insert into SCOTT.ERTEKELES (ISBN,EMAIL,PONTSZAM,MEGJEGYZES) values ('1-230-33861-6','Vanessa_Ortiz@gmail.com','6','fencing');
REM INSERTING into SCOTT.FELHASZNALO
SET DEFINE OFF;
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Bridget_Martin@gmail.com','Bridget Martin','force','01361 Dustin Street Apt. 350
New Tylerland, NY 90272','064-822-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Diana_Swanson@gmail.com','Diana Swanson','head','8311 Freeman Glens
Herrerabury, PA 52113','001-070-088-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Sarah_Griffin@gmail.com','Sarah Griffin','many','992 Frank Orchard Suite 167
East Jenniferfort, FL 09428','696646','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('William_Gonzalez@gmail.com','William Gonzalez','law','773 Adams Ramp
East Tracy, PA 02598','001-667-881-2742','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Candace_Burke@gmail.com','Candace Burke','learn','24611 Carolyn Villages Suite 171
Port Kevinville, MS 32301','(066)948-6666x9','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Nicole_Moon@gmail.com','Nicole Moon','Democrat','6659 Price Stravenue Suite 833
New Thomas, SC 63222','517-508-0602','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('John_Mcgrath@gmail.com','John Mcgrath','those','1638 Scott Trafficway
South Wesleytown, VI 93541','108526','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Nicholas_Zamora@gmail.com','Nicholas Zamora','adult','5348 Smith Terrace
New Christinahaven, OR 45551','+1-579-278-2981x8','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kevin_Anderson@gmail.com','Kevin Anderson','surface','235 Buchanan Skyway Suite 713
Villanuevastad, DC 60135','350-931-2980x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Jorge_Murphy@gmail.com','Jorge Murphy','bring','10145 Guerrero Junction
Erinburgh, TX 69731','(529)980-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Rachel_Walters@gmail.com','Rachel Walters','draw','PSC 1289, Box 8413
APO AE 04704','001-982-196-4531x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Todd_Bean@gmail.com','Todd Bean','evening','88178 Bennett Radial
Lake Austinton, VI 38808','366-361-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kayla_Smith@gmail.com','Kayla Smith','history','4742 Luis Route
East Kathryn, GU 22281','803-677-8092x1','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Stephen_Fox@gmail.com','Stephen Fox','wall','4422 Amanda Mountain Suite 296
Williamshaven, TX 21921','+1-597-819-9162x9','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Grace_Parker@gmail.com','Grace Parker','culture','50478 Smith Oval
New Anthony, VT 17803','001-382-452-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Aaron_Baker@gmail.com','Aaron Baker','anyone','PSC 9386, Box 1193
APO AP 26186','(925)008-5230x3','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Sharon_Thomas@gmail.com','Sharon Thomas','hard','460 Yvonne Trace Apt. 781
Parksside, IN 00606','(248)274-8355','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Leslie_Oconnell@gmail.com','Leslie Oconnell','firm','4046 Peterson Radial Apt. 713
Jenningsfurt, CO 59264','(783)930-3802','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Maria_Scott@gmail.com','Maria Scott','keep','051 Monica Street Suite 649
Coleberg, OH 19764','695-024-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Amber_Valenzuela@gmail.com','Amber Valenzuela','race','28075 Emily Plaza
New Brooke, NV 68086','001-043-789-9139x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Arthur_Waters@gmail.com','Arthur Waters','across','84935 April Land Apt. 225
Watsonview, MA 44497','001-352-771-9768x6','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Holly_Hall@gmail.com','Holly Hall','responsibility','674 Erica Branch
Cruztown, KY 39190','158-750-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Joseph_Cox@gmail.com','Joseph Cox','seem','01648 Smith Road Apt. 924
Lake Annette, CO 51125','514-883-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Amber_Sutton@gmail.com','Amber Sutton','usually','40888 Vazquez Stream
North Bradleyville, OH 13027','384-896-9326x4','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Michael_Thompson@gmail.com','Michael Thompson','along','6023 Bailey Mountain
Nicholasstad, NV 96739','569.169.0555x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kent_Conner@gmail.com','Kent Conner','he','116 Michelle Motorway
Fordshire, KY 30599','311-422-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Andrea_Matthews@gmail.com','Andrea Matthews','level','314 Dean Pass
Rodriguezville, DE 34166','873-858-4026x0','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Gary_Stewart@gmail.com','Gary Stewart','major','08252 Gray Spring
North Mikaylastad, MN 36205','117-231-1562x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Elizabeth_Taylor@gmail.com','Elizabeth Taylor','major','6925 Patricia Dam Suite 805
Port Amberbury, ID 67049','932.792.','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Shawn_Owens@gmail.com','Shawn Owens','age','789 Christopher Ferry Apt. 815
Robertsstad, NY 56702','(729)982-9926','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Alyssa_Gonzalez@gmail.com','Alyssa Gonzalez','technology','628 Nathan Parks
Patriciastad, IN 74751','976.158.','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Martha_Shaw@gmail.com','Martha Shaw','page','57053 Anthony Lane Apt. 571
New Sethmouth, IL 23954','(386)978-7823','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Maria_Parker@gmail.com','Maria Parker','peace','54848 Sanchez Flats
East Michaelstad, PW 49225','(433)900-5709x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Austin_Bell@gmail.com','Austin Bell','short','7967 Hooper Center Apt. 129
Robertfort, MO 60990','+1-799-217-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Robert_Allen@gmail.com','Robert Allen','I','830 Burke Trail
Gonzalezville, MI 20116','001-058-352-5646x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kaitlin_Walsh@gmail.com','Kaitlin Walsh','deal','Unit 8691 Box 8012
DPO AA 37618','001-979-633-1788','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Vanessa_Ortiz@gmail.com','Vanessa Ortiz','dream','Unit 6182 Box 6564
DPO AP 78441','102-584-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Madison_Lowe@gmail.com','Madison Lowe','pretty','82519 Mcguire Green Apt. 066
North Holly, SD 24328','(618)105-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Amanda_Carney@gmail.com','Amanda Carney','already','812 Russell Freeway Suite 306
Jaredfurt, VI 03329','100.715.5924x6','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Rebecca_Espinoza@gmail.com','Rebecca Espinoza','wait','963 Bennett Inlet Apt. 715
Judytown, NE 23442','+1-378-520-1803','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kevin_Miller@gmail.com','Kevin Miller','practice','6434 Smith Path Suite 341
East Raymond, DC 34798','(739)579-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Darius_Wilcox@gmail.com','Darius Wilcox','never','5618 Lam Plaza
Rodriguezfurt, IL 47224','025-902-3597x0','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('David_Hayden@gmail.com','David Hayden','technology','Unit 0584 Box 0967
DPO AP 87913','252.195.0306x2','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Jennifer_Patterson@gmail.com','Jennifer Patterson','north','46034 Taylor Radial
Cindychester, IN 50558','248.003.','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Karen_Jones@gmail.com','Karen Jones','kid','0687 Dustin Ridge Suite 409
East Miguelville, KS 30735','286.213.3869x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Natalie_Taylor@gmail.com','Natalie Taylor','sell','711 Johnson Lakes
Lake Justin, VA 91174','001-261-652-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Robert_Johnson@gmail.com','Robert Johnson','finally','PSC 2873, Box 4823
APO AE 83082','+1-430-747-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Dustin_Gross@gmail.com','Dustin Gross','key','USCGC Mitchell
FPO AE 29900','727.292.1750x6','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Caitlyn_Castillo@gmail.com','Caitlyn Castillo','speech','USCGC Smith
FPO AP 03801','681-178-0480x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Donna_Gamble@gmail.com','Donna Gamble','from','Unit 3402 Box 5976
DPO AP 80188','(157)359-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Robert_Smith@gmail.com','Robert Smith','discover','PSC 9423, Box 0540
APO AA 98505','251.234.5408x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Matthew_Richmond@gmail.com','Matthew Richmond','science','01604 Silva Manor Apt. 153
Annettefurt, OH 75682','630-488-7008x4','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('David_Taylor@gmail.com','David Taylor','drop','144 Mark Drives
Ashleymouth, LA 01447','+1-425-021-8535x0','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Casey_Costa@gmail.com','Casey Costa','million','2974 Fitzpatrick Glen
Sosashire, MO 65536','001-017-063-2675x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Brian_Cardenas@gmail.com','Brian Cardenas','today','72001 Davis Street
Johnmouth, TN 22460','229.277.1349x5','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Tiffany_Hunter@gmail.com','Tiffany Hunter','tonight','92698 Anderson Ridge Suite 984
New Jose, PW 80473','(165)037-9951x1','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Deborah_Townsend@gmail.com','Deborah Townsend','here','271 Jason Forest Suite 228
Jacksonmouth, PW 61917','843225','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Shannon_Ochoa@gmail.com','Shannon Ochoa','collection','75824 Kristen Points Suite 745
Lake Ericfurt, DE 26040','806736','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Jennifer_Stephenson@gmail.com','Jennifer Stephenson','card','6749 Rita Rest Apt. 343
Shirleymouth, CO 50664','001-360-492-8709','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('James_Brown@gmail.com','James Brown','collection','94986 Dunn Points Apt. 394
Lake Amyberg, TN 19688','001-818-266-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Rebecca_Bishop@gmail.com','Rebecca Bishop','event','USS Greene
FPO AE 58746','748.765.','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kenneth_Johnson@gmail.com','Kenneth Johnson','environment','7976 Tanner Forge
Richardborough, NC 65474','672704','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kelly_Woodward@gmail.com','Kelly Woodward','of','20905 Hill Pine
Port Joshua, OH 79286','+1-460-498-8773','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Theresa_Alvarez@gmail.com','Theresa Alvarez','down','02249 Brittany Squares
East Michelle, CO 60428','(304)848-7685x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kerry_Morales@gmail.com','Kerry Morales','kitchen','24005 Christine Flat Suite 722
Lake Baileyport, MI 36556','(824)518-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Michael_Mckenzie@gmail.com','Michael Mckenzie','energy','PSC 2516, Box 2427
APO AA 19435','(296)204-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kenneth_Wright@gmail.com','Kenneth Wright','long','USNS Collins
FPO AA 70379','001-991-101-9122x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Deanna_Hall@gmail.com','Deanna Hall','result','8170 Michael Track
Brentmouth, SC 91118','620.338.7747x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Christopher_Jensen@gmail.com','Christopher Jensen','clear','5496 Roberts Street
Chelseabury, OH 67837','+1-805-893-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Ashlee_Hardy@gmail.com','Ashlee Hardy','sort','PSC 4255, Box 5879
APO AA 37475','+1-507-637-9312x7','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Steven_Salazar@gmail.com','Steven Salazar','occur','00493 Parker Lodge
Port Abigail, AR 73517','843-916-6191x0','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Aaron_Jackson@gmail.com','Aaron Jackson','recently','74318 Morris Lodge Suite 927
South Steven, OR 18141','(598)884-4008','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Katelyn_Martin@gmail.com','Katelyn Martin','senior','4515 Wilcox River
West Brenda, ME 41808','810-548-2226x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Melissa_Smith@gmail.com','Melissa Smith','country','USNS Ramos
FPO AA 59785','938-132-6646x0','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Rebecca_Houston@gmail.com','Rebecca Houston','major','211 Ramirez Divide Suite 938
West Maryfurt, MO 83139','631110','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('George_Taylor@gmail.com','George Taylor','window','5428 Reyes Mountains Suite 296
Colinshire, VA 43383','001-520-157-5351x6','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Miranda_Hernandez@gmail.com','Miranda Hernandez','forward','89742 Spencer Stream
New Elizabeth, CO 24715','791.700.0068x7','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Robert_Rocha@gmail.com','Robert Rocha','writer','04887 Nathan Hill Suite 727
East Troyfurt, IN 78591','001-332-426-7839','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Matthew_White@gmail.com','Matthew White','consumer','USNS Brown
FPO AA 61874','+1-207-321-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Susan_King@gmail.com','Susan King','detail','74725 Michael Rapids
West Sheliaborough, MH 98031','597176','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Scott_Schmidt@gmail.com','Scott Schmidt','trip','5925 Robinson Plain Apt. 134
Edwardview, FM 73388','703272','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Meagan_Vega@gmail.com','Meagan Vega','turn','586 Baker View Apt. 178
North Sarahport, IN 52918','+1-942-125-1308x','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Lauren_Nielsen@gmail.com','Lauren Nielsen','power','837 Hernandez Underpass
Johnsontown, OH 22579','(406)196-2591x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Lisa_Espinoza@gmail.com','Lisa Espinoza','number','84878 Penny Turnpike Suite 490
Kellyborough, TX 78299','624-963-2969','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Richard_Mccoy@gmail.com','Richard Mccoy','me','4811 Wolfe Views
Jasminefurt, AR 56297','001-687-324-7100x','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Tony_Adams@gmail.com','Tony Adams','same','3855 Paul Branch Apt. 166
Danielbury, NJ 14986','082-555-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Christopher_Black@gmail.com','Christopher Black','while','344 Flowers Extensions
Christopherbury, WI 34831','(664)474-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Troy_Simpson@gmail.com','Troy Simpson','region','2032 Robert Mill
Kevinmouth, FM 44365','+1-849-009-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Amy_Cole@gmail.com','Amy Cole','instead','8843 Davis Place Suite 498
Vancechester, ME 63903','491.973.','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Jackson_Powell@gmail.com','Jackson Powell','car','6998 Chang Harbor
East Jason, FM 09725','367-339-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('James_Jones@gmail.com','James Jones','happy','959 Yvonne Circles Apt. 120
West Brenda, PA 29849','928863','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Patrick_Andrews@gmail.com','Patrick Andrews','important','USNS Huynh
FPO AE 96342','360056','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Andrea_Henderson@gmail.com','Andrea Henderson','book','583 Bobby Run
North Jesusmouth, PA 52284','124.804.','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Daniel_Baker@gmail.com','Daniel Baker','top','72701 Stacy Rest
West Tylerfort, OH 53393','+1-386-606-','admin');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Jennifer_Price@gmail.com','Jennifer Price','my','314 Gardner Stream
Sarahview, NJ 67100','766.591.8520x3','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Benjamin_Aguilar@gmail.com','Benjamin Aguilar','offer','Unit 6065 Box 8886
DPO AE 54969','936-387-','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Kristen_Gonzales@gmail.com','Kristen Gonzales','people','38682 Richard Trail Apt. 965
Shannonland, OR 97761','001-901-774-','guest');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Michael_Sullivan@gmail.com','Michael Sullivan','fly','4246 Campbell Plaza
Lake Cody, CA 90261','(537)262-4978x','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Marissa_Sanders@gmail.com','Marissa Sanders','light','PSC 1275, Box 0299
APO AA 89090','439.940.6588','user');
Insert into SCOTT.FELHASZNALO (EMAIL,NEV,JELSZO,CIM,TELEFON,SZEREP) values ('Jessica_Perry@gmail.com','Jessica Perry','physical','1407 Hayes Junction Apt. 708
Kerrstad, NV 94318','+1-113-349-5679x8','admin');
REM INSERTING into SCOTT.KEDVENCE
SET DEFINE OFF;
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-7449-7965-X','Aaron_Jackson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-66925-440-2','Alyssa_Gonzalez@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-4393-1745-3','Amanda_Carney@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-03-784706-6','Amber_Sutton@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-79570-496-9','Amber_Valenzuela@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-293-55234-7','Amy_Cole@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-74356-844-4','Andrea_Henderson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-8340-8103-2','Andrea_Matthews@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-962019-54-3','Arthur_Waters@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-66925-440-2','Ashlee_Hardy@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-918573-84-0','Austin_Bell@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-64669-380-9','Benjamin_Aguilar@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-9787-3379-8','Brian_Cardenas@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-496-79893-6','Bridget_Martin@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-71503-005-2','Caitlyn_Castillo@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-03-784706-6','Candace_Burke@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-4703-1305-7','Casey_Costa@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-7449-7965-X','Christopher_Black@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-4382-8868-9','Christopher_Jensen@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-351-57868-5','Daniel_Baker@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-03-784706-6','Darius_Wilcox@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-591-07557-1','David_Hayden@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-535-44449-4','David_Taylor@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-674-92399-5','Deanna_Hall@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-962019-54-3','Deborah_Townsend@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-308-86366-7','Diana_Swanson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-7326174-8-1','Donna_Gamble@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-634-34719-5','Dustin_Gross@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-185-75693-0','Elizabeth_Taylor@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-8340-8103-2','George_Taylor@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-204-80137-1','Grace_Parker@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-674-92399-5','Holly_Hall@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-71503-005-2','Jackson_Powell@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-682-60823-8','James_Brown@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-07-437761-3','James_Jones@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-03-784706-6','Jennifer_Patterson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-252-07816-1','Jennifer_Price@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-8421-4639-3','Jennifer_Stephenson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-9787-3379-8','Jessica_Perry@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-74356-844-4','John_Mcgrath@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-9847438-5-5','Jorge_Murphy@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-7695-7817-9','Kaitlin_Walsh@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-308-86366-7','Katelyn_Martin@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-213-85697-2','Kenneth_Wright@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-64413-859-X','Kent_Conner@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-381-89366-9','Kerry_Morales@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-4193-7955-0','Kevin_Miller@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-56304-974-0','Kristen_Gonzales@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-11-679653-7','Lauren_Nielsen@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-14-339473-8','Leslie_Oconnell@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-12-836233-2','Lisa_Espinoza@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-170-50075-7','Madison_Lowe@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-422-65084-6','Maria_Parker@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-631-06761-2','Maria_Scott@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-224-95234-X','Martha_Shaw@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-66925-440-2','Matthew_Richmond@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-64413-859-X','Matthew_White@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-87918-361-6','Meagan_Vega@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-74356-844-4','Melissa_Smith@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-907139-00-0','Michael_Mckenzie@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-872529-49-6','Michael_Sullivan@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-01-185586-0','Michael_Thompson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-631-06761-2','Miranda_Hernandez@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-213-85697-2','Natalie_Taylor@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-213-85697-2','Nicholas_Zamora@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-257-90921-5','Nicole_Moon@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-89965-686-2','Patrick_Andrews@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-631-06761-2','Rachel_Walters@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-89965-686-2','Rebecca_Bishop@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-86817-615-0','Rebecca_Espinoza@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-89965-686-2','Rebecca_Houston@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-79570-496-9','Richard_Mccoy@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-339-99775-3','Robert_Allen@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-189-20984-5','Robert_Johnson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-66925-440-2','Robert_Smith@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-4393-1745-3','Scott_Schmidt@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-682-60823-8','Shannon_Ochoa@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-669-65575-9','Sharon_Thomas@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-83979-264-7','Shawn_Owens@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-66925-440-2','Steven_Salazar@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-4393-1745-3','Susan_King@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-8084-0632-9','Tiffany_Hunter@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-935398-09-1','Todd_Bean@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-7449-7965-X','Tony_Adams@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('1-77428-130-9','Troy_Simpson@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-535-44449-4','Vanessa_Ortiz@gmail.com');
Insert into SCOTT.KEDVENCE (ISBN,EMAIL) values ('0-89965-686-2','William_Gonzalez@gmail.com');
REM INSERTING into SCOTT.KIADO
SET DEFINE OFF;
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Perez Ltd','82898 Bob Drive Suite 128
Wardtown, CA 05095','037.362.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hancock, Bond and Summers','PSC 1121, Box 0438
APO AE 46835','001-361-654-0098x9');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Sherman Inc','98835 Ashley Trafficway Apt. 227
West Connorstad, GU 64939','945.249.6883x1');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hughes Inc','17587 Miller Island
Jacksonshire, NM 34514','229.279.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Lam Group','923 Tran Burg
South Crystalside, TX 54701','749.189.1109');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Jones, Hanna and Mason','99438 Erika Circle Apt. 422
New Lisaview, NJ 21042','002-696-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Cruz, Campos and Koch','0860 Michael Mission
East Jeffreystad, MI 49812','001-449-846-5140');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Lynch-Chaney','9560 Benson Run Suite 070
Walterton, MD 43950','001-164-097-1062');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Mccall and Sons','884 Guzman Shoal
Hendersonfurt, AR 96763','(743)634-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Cox Group','3357 Joel Loaf
Port Jacob, VT 85885','437.729.1936x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Baldwin-Sanchez','USNV Walker
FPO AA 38952','(997)829-2561x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Miles-Bell','644 Christopher Centers Suite 142
Erinberg, AK 20076','140.049.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Gutierrez, Estes and Harris','582 Michael Throughway
Yangfort, VA 31865','001-602-603-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Williams-Henry','626 Maxwell Rest
Garyport, WI 08554','001-710-688-8090');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Simmons, Mcfarland and Rose','28206 Heather Coves
Hillmouth, ND 12619','483.854.3240x1');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Martinez-Poole','0032 Mathis Stravenue Apt. 215
Port Steven, NM 38547','399.062.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Mejia PLC','34416 Rowe Station
South Evanhaven, ID 50629','790-610-6995');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Saunders-Davis','Unit 6301 Box 0679
DPO AE 44329','+1-322-862-7863');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Nash-Branch','585 Catherine Glen
East Kimberly, OH 96174','655.829.9861x7');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hardy-Hardin','78748 Martin Village Suite 739
East Valeriebury, PW 62342','770.675.4042x0');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Barber, Sharp and Nash','19583 Fox Highway Suite 454
East Kylebury, OH 56709','+1-177-487-5786x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Pittman, Schwartz and Bennett','8677 Stephanie Corners
Robertbury, IL 62800','152.133.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Cordova-Gomez','162 Jordan Isle Suite 770
New Anthony, DC 07434','(412)628-8680x1');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Santana-Kerr','938 Smith Underpass Suite 120
Fernandezville, RI 91189','943692');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Townsend-Patel','6981 Jones Pine
Port Lisaland, PW 20791','762.927.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Rangel Ltd','1085 Sydney Garden Apt. 367
Port Eric, NY 25347','999-697-8302');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Gaines, Perry and Lee','90548 Elijah Pines
South Lisaburgh, VI 70087','785.957.6511');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Brown, Guerra and Benson','PSC 4048, Box 0414
APO AP 20251','950.670.7217x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Kirk Ltd','09755 Anita Highway
Lake Elizabethfort, TN 73491','+1-110-655-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Spencer, Riley and Torres','51193 Wesley Mission Suite 259
Bookermouth, AR 52161','+1-142-845-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Lewis-Sanders','319 Ford Haven
Port Marktown, DE 07144','(174)450-0070x5');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Smith and Sons','787 Watson Drive
South Anthony, FM 76448','239-642-0435');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Powell-Davis','62129 Wilson Road Apt. 185
West Jasmineville, IL 64794','(482)904-4101x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Coleman-Jones','2394 Mary Loop
New Stephanie, FM 52530','850.849.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Jimenez, Tran and Cooke','40820 Ashley Spring
North Bernard, WA 68267','001-085-394-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Tucker PLC','4237 Davis Lock
Port Teresafurt, AZ 62331','001-524-670-1569');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Conway Group','1290 Michael Coves
East Darrenberg, VT 67904','001-428-958-6629x9');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Coleman LLC','7541 Quinn Circle
Clarkberg, AL 25342','573.991.3400');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Gonzalez Group','77387 Seth Ridge Apt. 804
North Alexandra, AL 04824','+1-566-145-9142x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hancock PLC','022 Robles Shoal Suite 006
Petersonbury, GU 05682','(751)095-0075');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Wade Group','028 Dennis Wall Suite 015
Stevensborough, CT 41887','+1-895-725-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Brady Ltd','6720 Ashley Drives Suite 423
Garciaville, ID 83283','+1-220-874-0668');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Salas-Hawkins','8088 Dixon Corner Apt. 591
East Jessica, GA 66311','315389');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Barton and Sons','34822 Gutierrez Corners
Grantbury, WY 05823','+1-377-935-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Rojas Group','29138 Hull Bypass Suite 741
Port Lisa, CA 17042','(249)136-8561x2');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Harding-Pratt','6338 Donald Village
Deborahfort, MI 67083','(693)215-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Simmons, Hardy and Chandler','7162 Tracy Roads Suite 985
Hallmouth, CT 66714','080.200.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Turner, Kennedy and Riley','85972 Emily Flats Apt. 078
North Susanchester, TX 52854','+1-432-042-4075x9');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Kelley Ltd','919 Olivia Well
Krististad, OH 89649','+1-901-462-3758x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Cruz, Smith and Clements','17908 Taylor Mount
North Rayview, MH 22438','+1-847-041-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Blair-Curtis','61605 Kelsey Fall
Monicaton, NY 51510','806-445-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Burnett, Hampton and Ferguson','836 Gina Pike
Ayalamouth, VT 43819','748-745-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Johnson-Shaw','6568 Molly Street
Ericaborough, HI 76471','(123)201-9846x6');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Flynn PLC','05093 Thomas Springs
Grayton, WA 17469','576-373-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Vega, Vazquez and Walker','65184 Higgins Highway
Fullermouth, NY 48868','001-118-613-8727x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Nichols PLC','USNS Thompson
FPO AA 74582','782-287-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Martinez, Patel and Berg','91301 Watkins Junction Suite 175
West Maryfort, WA 81507','844443');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Page, Turner and Miller','PSC 6853, Box 8318
APO AE 35948','+1-403-888-9503');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Sellers-Middleton','3302 Robert Cove Suite 797
Chadland, ND 62079','739.012.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Porter-Perry','Unit 0329 Box 2354
DPO AP 65861','558557');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Stokes-Sullivan','55479 Zachary Circles
South Joshua, AZ 28852','(880)515-2064x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Johnson, Powell and Brown','197 Robinson Roads Apt. 532
Nicholasside, WI 51367','+1-156-577-7649x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Cabrera, Orozco and Mckinney','4975 Cruz Streets
Port Ashlee, OR 36025','001-712-434-2253');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Rodgers PLC','1296 Ruiz Plain
Simmonston, AK 96743','014-456-7677x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Lang Group','934 William Common
South Tyler, MN 96539','(467)014-9597x8');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Kent LLC','039 David Mountain
South Brandy, SD 25242','(074)429-1988');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Bishop-Johnson','USS Matthews
FPO AE 18879','(589)298-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Smith-Kirby','43369 Hailey Valley Suite 444
Lake Sabrinamouth, WV 47066','570-394-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Giles-Chan','1332 Gray Ford
Chelseyburgh, MN 73231','(906)059-2614x3');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Brown, Duncan and Lawson','65700 Clements Pass
North Danielle, WV 94576','(212)920-9414x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hatfield Ltd','8376 Baker Stravenue Apt. 757
North Thomas, MN 36626','(875)569-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Smith, Fuller and Burns','21026 Sarah Canyon Suite 429
North Johnathanburgh, AR 23935','001-132-106-3594x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Becker and Sons','109 Jonathan Keys
East Jorgeland, PR 30437','277017');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Taylor Ltd','Unit 0539 Box 4863
DPO AE 92520','001-990-430-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Brown-Brewer','49147 Richard Squares Suite 975
North Ryan, AR 27562','986-376-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Charles and Sons','168 Katie Centers
Rachelville, FM 40066','001-102-276-3582x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Lopez, Sanchez and Butler','4198 Blevins Cliffs Suite 611
Victoriaburgh, NM 88390','008.225.6703x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Mcdonald, Williams and Goodman','04366 Green Crescent Apt. 260
Paulabury, CO 13968','001-892-275-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Martinez and Sons','836 Hall Throughway
Jacobstad, KY 25175','566924');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Ward, Davis and Sherman','822 Watson Flat Suite 319
Baileychester, LA 70918','533.125.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Johnson-Schneider','8119 Bautista Locks
South Brenda, KS 55472','(583)517-4998');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Brady-Hernandez','987 Kenneth Gardens
Coxshire, AS 23353','036.291.9849x6');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Blankenship-Moore','76376 Adam Shore Suite 216
West Jacob, ME 13164','238-449-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Marshall-Juarez','PSC 8852, Box 2057
APO AP 66658','276618');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Duran-Schwartz','6477 Poole Mountain
Alexisstad, OK 40457','001-340-062-6612x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Baker-Gutierrez','25261 Susan Pine
East Dannyfurt, WV 30309','858.752.');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Hernandez-Sutton','33110 Williams Valley Suite 793
Johnborough, FL 20960','(326)908-9592');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Garcia-Nichols','93066 Lori Station Suite 186
New Judy, FL 89790','905-366-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Lopez PLC','069 Rice Drives
Lake Pamelaland, MI 53402','248173');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Day PLC','7088 Adams View Apt. 943
Levineton, MI 22294','348.109.1183x6');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Williams-Owens','57983 Brandy River
Elizabethfurt, HI 61844','420.872.9126x2');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Roberts, Finley and Santiago','4983 Lewis Locks
Port Jonathan, VA 23088','361-761-4870x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Arnold-Harris','564 Herrera Grove
Johnsonhaven, NH 69518','(786)767-');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('West, Lloyd and Bishop','3846 Doyle Course Suite 507
Goldenfort, MN 11915','+1-039-902-2414x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Doyle, Grimes and Berg','52305 Johnny Squares
New Kyle, NJ 78763','001-985-949-5039x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Solomon-Lester','62558 Mcbride Prairie
Port Larrymouth, WA 07856','(422)336-8732');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Quinn, West and Murphy','23630 Curtis Path
Fredfurt, LA 14343','(853)252-4685');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Washington, Brown and Johnson','9651 Mccarty Gardens
Morrisonfurt, LA 94480','001-679-569-5883');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Harris-Miller','81202 Hood Square Apt. 569
Kevinchester, SC 46699','(790)711-5774x');
Insert into SCOTT.KIADO (NEV,CIM,TELEFON) values ('Mills-Williams','543 Morris Track Apt. 099
Millerfort, NC 89411','087.715.8901x');
REM INSERTING into SCOTT.KIADTA
SET DEFINE OFF;
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Barton and Sons','1-01-669363-X','1981');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Becker and Sons','0-03-784706-6','1986');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Becker and Sons','1-04-255280-0','2011');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Bishop-Johnson','0-213-85697-2','1974');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Bishop-Johnson','1-56304-974-0','2012');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Bishop-Johnson','1-960962-52-3','1966');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Blankenship-Moore','0-7189-4746-0','1961');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Blankenship-Moore','0-89965-686-2','1960');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Brady Ltd','1-66925-440-2','1992');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Brady-Hernandez','0-369-80394-9','2012');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Brown, Duncan and Lawson','0-8084-0632-9','2009');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Brown, Guerra and Benson','0-8340-8103-2','1992');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Brown, Guerra and Benson','1-08-057361-5','1983');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Brown-Brewer','1-170-50075-7','1961');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Burnett, Hampton and Ferguson','1-5351-9430-8','1952');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Charles and Sons','0-01-942875-8','1969');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Charles and Sons','0-7209-5158-5','2021');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Charles and Sons','1-119-52131-9','2020');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Coleman LLC','1-02-896403-X','1978');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Coleman-Jones','1-922226-51-3','1966');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Conway Group','1-872529-49-6','1966');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Conway Group','1-935398-09-1','1951');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Cordova-Gomez','1-4393-1745-3','2004');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Cruz, Campos and Koch','1-918573-84-0','1991');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Day PLC','1-4568-3005-8','2016');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Doyle, Grimes and Berg','0-593-63674-0','1960');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Doyle, Grimes and Berg','1-70918-017-X','2001');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Gaines, Perry and Lee','1-01-185586-0','1994');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Gonzalez Group','1-08-257526-7','2023');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Hancock PLC','1-83979-264-7','1977');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Hancock, Bond and Summers','1-79570-496-9','2010');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Harris-Miller','1-71503-005-2','2016');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Hatfield Ltd','1-226-58671-6','1993');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Hernandez-Sutton','0-422-65084-6','1978');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Jimenez, Tran and Cooke','0-7120-7797-9','2022');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Jimenez, Tran and Cooke','0-8421-4639-3','1958');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Johnson-Schneider','0-11-679653-7','1988');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Johnson-Schneider','0-9847438-5-5','1987');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Johnson-Schneider','1-138-01647-0','1978');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Johnson-Shaw','1-962019-54-3','2004');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Jones, Hanna and Mason','0-535-44449-4','1965');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Jones, Hanna and Mason','1-77428-130-9','1973');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Kelley Ltd','1-9787-3379-8','1988');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Kent LLC','0-11-245363-5','2013');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Kirk Ltd','1-230-33861-6','2019');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Kirk Ltd','1-4703-1305-7','2012');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lam Group','1-189-20984-5','1978');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lewis-Sanders','0-669-65575-9','1992');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lewis-Sanders','0-926692-82-8','2019');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lopez PLC','0-591-07557-1','2020');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lopez PLC','0-631-06761-2','2006');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lopez PLC','1-75548-904-8','1956');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lopez, Sanchez and Butler','0-496-79893-6','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Lynch-Chaney','0-674-92399-5','1971');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Marshall-Juarez','0-381-89366-9','2000');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Martinez and Sons','1-121-56234-5','1954');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Martinez, Patel and Berg','0-9985006-0-7','1957');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Martinez-Poole','1-204-80137-1','1975');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Mcdonald, Williams and Goodman','0-89340-018-1','2012');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Mejia PLC','0-224-95234-X','1954');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Miles-Bell','1-74356-844-4','2010');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Mills-Williams','1-70216-330-X','1965');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Mills-Williams','1-86817-615-0','2010');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Nash-Branch','1-257-90921-5','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Nash-Branch','1-63443-207-X','2018');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Nichols PLC','0-7449-7965-X','1968');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Nichols PLC','1-07-437761-3','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Nichols PLC','1-252-07816-1','2017');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Nichols PLC','1-4382-8868-9','2021');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Pittman, Schwartz and Bennett','0-293-55234-7','2016');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Porter-Perry','1-185-75693-0','1986');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Porter-Perry','1-4193-7955-0','1978');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Powell-Davis','0-907139-00-0','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Quinn, West and Murphy','1-310-60072-4','2020');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Rangel Ltd','0-7695-7817-9','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Roberts, Finley and Santiago','0-7542-8355-0','1997');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Rodgers PLC','1-5255-0915-2','2022');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Saunders-Davis','0-12-279466-4','1965');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Sherman Inc','0-605-73005-9','1983');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Sherman Inc','0-89255-515-7','1993');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Simmons, Hardy and Chandler','0-87918-361-6','1953');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Smith, Fuller and Burns','0-88765-109-7','1950');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Smith-Kirby','1-64669-380-9','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Solomon-Lester','0-85063-814-3','1979');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Solomon-Lester','1-308-86366-7','2013');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Spencer, Riley and Torres','1-7326174-8-1','1969');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Stokes-Sullivan','0-01-053342-7','2002');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Stokes-Sullivan','0-14-339473-8','1998');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Stokes-Sullivan','1-78482-193-4','1981');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Taylor Ltd','0-07-420603-6','2004');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Townsend-Patel','0-339-99775-3','2021');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Tucker PLC','0-12-836233-2','2011');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Tucker PLC','0-682-60823-8','1956');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Tucker PLC','1-171-18855-2','2014');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Turner, Kennedy and Riley','0-446-67178-9','1955');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Vega, Vazquez and Walker','0-634-34719-5','2005');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('West, Lloyd and Bishop','1-64413-859-X','2021');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Williams-Henry','0-272-92296-X','1966');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Williams-Owens','1-351-57868-5','1970');
Insert into SCOTT.KIADTA (NEV,ISBN,MIKOR) values ('Williams-Owens','1-998414-74-4','1966');
REM INSERTING into SCOTT.KONYV
SET DEFINE OFF;
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-535-44449-4','1760','ebook','resilient discerning corgi of felicity','922');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-4382-8868-9','2720','soft-cover','wonderful bald grouse of art','860');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-7449-7965-X','8210','soft-cover','hidden athletic ibis of camouflage','676');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-8084-0632-9','1420','hard-cover','divergent optimal starfish of glee','902');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-185-75693-0','6430','ebook','debonair ultra kakapo of perception','79');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-01-053342-7','2040','ebook','imperial encouraging chimpanzee of security','59');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-78482-193-4','4960','soft-cover','feathered tuscan beetle from ganymede','260');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-03-784706-6','6510','ebook','spirited natural crane of sufficiency','292');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-119-52131-9','8950','hard-cover','independent athletic wildebeest of serenity','411');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-496-79893-6','160','hard-cover','jumping ivory capuchin of kindness','815');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-230-33861-6','2220','hard-cover','knowing devout reindeer of chaos','64');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-56304-974-0','2390','hard-cover','meaty silver baboon of patience','820');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-77428-130-9','9450','soft-cover','victorious thundering jerboa of research','495');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-5255-0915-2','9250','ebook','cute versatile seahorse of psychology','854');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-01-942875-8','8980','hard-cover','enigmatic annoying muskox of philosophy','146');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-08-057361-5','5810','ebook','aquatic dashing bull of pleasure','52');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-310-60072-4','7710','soft-cover','able ruddy orca of priority','248');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-01-669363-X','6650','hard-cover','festive axiomatic anteater of respect','185');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-339-99775-3','1820','soft-cover','bouncy laughing ferret of destiny','14');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-63443-207-X','8910','ebook','ancient thoughtful dragon of psychology','405');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-226-58671-6','1210','hard-cover','tasteful woodlouse of satisfying reputation','814');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-64413-859-X','9710','soft-cover','curvy fluffy jaguar of research','364');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-83979-264-7','460','soft-cover','dexterous squid of simple typhoon','104');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-170-50075-7','6660','hard-cover','fragrant stalwart lizard of joviality','818');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-8340-8103-2','8450','ebook','ivory serval of pragmatic triumph','887');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-64669-380-9','4270','ebook','inescapable impetuous auk of trust','164');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-138-01647-0','3080','hard-cover','shapeless raspberry skunk from jupiter','513');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-593-63674-0','990','soft-cover','stylish hissing bittern of excellence','11');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-9985006-0-7','9940','soft-cover','stirring benign perch of force','984');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-74356-844-4','2630','soft-cover','perfect gregarious jellyfish of tempest','230');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-631-06761-2','3030','soft-cover','industrious skylark of magic coffee','83');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-446-67178-9','5110','ebook','nickel hamster of authentic chaos','550');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-962019-54-3','7230','soft-cover','authentic certain bonobo from hell','466');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-257-90921-5','2320','soft-cover','fierce steadfast reindeer of atheism','617');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-171-18855-2','820','soft-cover','rare tomato capuchin of shopping','988');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-7542-8355-0','5920','soft-cover','sceptical excellent guppy of mathematics','748');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-87918-361-6','9800','ebook','sparkling discreet kiwi of defiance','42');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-7695-7817-9','9020','soft-cover','urban bald scorpion of wonder','63');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-12-279466-4','5080','hard-cover','active charming peacock of realization','441');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-85063-814-3','2950','ebook','manipulative smooth iguana from mars','486');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-7326174-8-1','1850','hard-cover','functional amorphous ibex of wizardry','515');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-89340-018-1','6900','soft-cover','nimble analytic clam of tornado','516');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-8421-4639-3','8470','ebook','judicious carmine partridge of snow','804');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-204-80137-1','1840','ebook','honored sapphire clam of grandeur','586');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-11-245363-5','750','hard-cover','radiant lively agama of engineering','145');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-935398-09-1','9190','hard-cover','intelligent righteous cuscus of reading','878');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-369-80394-9','260','ebook','crystal brainy toad of artistry','535');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-86817-615-0','9950','soft-cover','angelic hospitable manatee of fantasy','158');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-7209-5158-5','3310','hard-cover','loud delectable pillbug of discourse','4');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-213-85697-2','7040','hard-cover','magnetic ancient frog of prosperity','874');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-872529-49-6','5890','hard-cover','radical rainbow coot of philosophy','306');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-922226-51-3','8010','ebook','keen perfect oriole of chivalry','884');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-08-257526-7','1180','soft-cover','vague speedy beaver of nirvana','179');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-422-65084-6','2270','soft-cover','pastoral industrious cormorant of faith','268');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-907139-00-0','2260','soft-cover','woodoo quirky kagu of philosophy','678');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-7189-4746-0','8160','ebook','industrious festive vole of tornado','808');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-71503-005-2','6240','ebook','fiery romantic octopus from avalon','573');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-591-07557-1','3350','ebook','spicy galago of utter success','957');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-88765-109-7','6080','soft-cover','beautiful witty chowchow of completion','183');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-252-07816-1','7310','hard-cover','wakeful dramatic trout of dignity','748');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-75548-904-8','7180','hard-cover','green toad of scientific attraction','610');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-351-57868-5','2220','ebook','stereotyped radical peacock of chaos','273');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-07-437761-3','4230','soft-cover','piquant porcelain serval of culture','688');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-4703-1305-7','4200','soft-cover','brawny smart mushroom of diversity','663');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-4193-7955-0','9150','hard-cover','wakeful super panda of engineering','532');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-66925-440-2','5380','soft-cover','active organic vicugna of grandeur','800');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-04-255280-0','2060','ebook','calculating nonchalant impala of symmetry','688');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-70918-017-X','9600','ebook','solemn arrogant tarantula of judgment','98');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-634-34719-5','2090','ebook','noisy olivine clam of coffee','759');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-224-95234-X','8260','hard-cover','colossal mindful foxhound of promotion','737');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-381-89366-9','360','hard-cover','loutish married skua of prowess','927');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-9787-3379-8','7370','soft-cover','ultramarine mole of subtle greatness','209');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-605-73005-9','6590','soft-cover','hasty horned crocodile of speed','337');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-308-86366-7','8430','soft-cover','astute scorpion of splendid current','55');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-7120-7797-9','750','hard-cover','roaring laughing chinchilla from jupiter','324');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-79570-496-9','9670','ebook','original fanatic albatross of bliss','847');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-926692-82-8','9400','hard-cover','skilled steady agama of wonder','5');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-682-60823-8','4550','ebook','athletic paper ostrich of fortitude','624');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-89965-686-2','7380','hard-cover','messy invaluable jaybird of dignity','76');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-70216-330-X','3460','soft-cover','offbeat merciful parakeet of upgrade','374');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-669-65575-9','1230','soft-cover','congenial rugged kagu of cookies','73');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-02-896403-X','3000','hard-cover','just spiffy beetle of apotheosis','189');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-918573-84-0','1320','hard-cover','omniscient calculating gopher of saturation','932');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-272-92296-X','7850','soft-cover','tacky military wildebeest of election','422');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-293-55234-7','4240','soft-cover','athletic rainbow labradoodle of pleasure','334');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-89255-515-7','3640','soft-cover','innocent illegal sawfish of symmetry','698');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-998414-74-4','7640','ebook','spicy ruby seriema from asgard','98');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-01-185586-0','1000','ebook','rustling convivial rabbit of respect','582');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-960962-52-3','1510','hard-cover','peculiar dainty lori of chivalry','553');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-121-56234-5','4620','soft-cover','diligent brawny puffin of pluck','772');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-14-339473-8','5590','hard-cover','dark mantis of inspiring virtuosity','706');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-07-420603-6','910','ebook','meek astonishing penguin of memory','613');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-674-92399-5','1480','hard-cover','funny sidewinder of classic music','78');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-12-836233-2','4580','ebook','gainful magenta pronghorn of economy','928');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-189-20984-5','2820','ebook','wakeful bold sidewinder of glory','115');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-4393-1745-3','8990','ebook','positive pistachio mastodon of teaching','761');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-9847438-5-5','8680','soft-cover','angelic cream tiger of faith','322');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-4568-3005-8','2070','ebook','sweet resolute booby of defense','182');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('1-5351-9430-8','5470','ebook','tough violet oyster of joviality','954');
Insert into SCOTT.KONYV (ISBN,AR,KOTES,CIM,OLDALSZAM) values ('0-11-679653-7','4440','ebook','radiant discreet malkoha of wealth','351');
REM INSERTING into SCOTT.MUFAJA
SET DEFINE OFF;
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Adventure','0-422-65084-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Adventure','0-89340-018-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Adventure','1-252-07816-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Adventure','1-66925-440-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Art','0-634-34719-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Art','1-01-185586-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Art','1-204-80137-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Art','1-64413-859-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Children�s','1-121-56234-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Children�s','1-872529-49-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Children�s','1-918573-84-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','0-01-942875-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','0-339-99775-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','0-369-80394-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','0-8340-8103-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','1-138-01647-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','1-4382-8868-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Contemporary','1-63443-207-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Cookbook','0-272-92296-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Cookbook','1-922226-51-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','0-213-85697-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','0-293-55234-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','0-591-07557-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','0-7189-4746-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','0-9985006-0-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','1-01-669363-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Development','1-02-896403-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Dystopian','0-926692-82-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Dystopian','1-64669-380-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Families & Relationships','0-7542-8355-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Families & Relationships','0-87918-361-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Families & Relationships','1-119-52131-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Families & Relationships','1-5351-9430-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Fantasy','0-669-65575-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Fantasy','1-230-33861-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Fantasy','1-308-86366-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Fantasy','1-7326174-8-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Guide / How-to','1-185-75693-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Guide / How-to','1-226-58671-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Guide / How-to','1-4703-1305-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Guide / How-to','1-998414-74-4');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Health','0-224-95234-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Health','0-593-63674-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Health','0-85063-814-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Historical fiction','0-07-420603-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Historical fiction','1-71503-005-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Historical fiction','1-960962-52-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('History','0-11-245363-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('History','0-7209-5158-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('History','1-310-60072-4');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Horror','0-12-836233-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Horror','0-682-60823-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','0-496-79893-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','0-605-73005-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','0-674-92399-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','0-7449-7965-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','0-7695-7817-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','0-8084-0632-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','1-170-50075-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','1-189-20984-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','1-4393-1745-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','1-56304-974-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Humor','1-74356-844-4');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Memoir','1-08-057361-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Memoir','1-171-18855-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Memoir','1-935398-09-1');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Motivational','0-535-44449-4');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Motivational','0-89255-515-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Motivational','1-77428-130-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Motivational','1-78482-193-4');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Motivational','1-962019-54-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Mystery','0-89965-686-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Mystery','1-70918-017-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','0-88765-109-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','0-907139-00-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-04-255280-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-08-257526-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-257-90921-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-351-57868-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-5255-0915-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-70216-330-X');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Paranormal','1-83979-264-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Romance','0-381-89366-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Romance','0-631-06761-2');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Romance','0-7120-7797-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Romance','0-8421-4639-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Romance','1-79570-496-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Science Fiction','0-03-784706-6');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Science Fiction','0-12-279466-4');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Science Fiction','0-9847438-5-5');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Science Fiction','1-07-437761-3');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Science Fiction','1-4568-3005-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Self-help','0-01-053342-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Self-help','0-11-679653-7');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Self-help','0-14-339473-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Self-help','0-446-67178-9');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Thriller','1-9787-3379-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Travel','1-4193-7955-0');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Travel','1-75548-904-8');
Insert into SCOTT.MUFAJA (MUFAJNEV,ISBN) values ('Travel','1-86817-615-0');
REM INSERTING into SCOTT.SALGRADE
SET DEFINE OFF;
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('1','700','1200');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('2','1201','1400');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('3','1401','2000');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('4','2001','3000');
Insert into SCOTT.SALGRADE (GRADE,LOSAL,HISAL) values ('5','3001','9999');
REM INSERTING into SCOTT.SZERZOJE
SET DEFINE OFF;
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Aimee James','1-64669-380-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Alex Greene','0-381-89366-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Alyssa Avila','0-87918-361-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Amanda Taylor','0-213-85697-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Amber Tate','0-01-942875-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Amy Sharp','1-226-58671-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Amy Underwood','1-9787-3379-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Andrea Riley','0-01-053342-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Andrew Owen','1-71503-005-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Anthony Clark','1-310-60072-4');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Anthony Medina','0-89965-686-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Ashley Smith','1-77428-130-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Bradley Francis','1-204-80137-1');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brandi Burns','1-138-01647-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brenda Miller','0-7120-7797-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brenda Murray','1-07-437761-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brett Young','1-78482-193-4');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brian Craig','0-03-784706-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Brian Mclaughlin','1-86817-615-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Caleb Brewer','1-170-50075-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Chad Cochran','0-293-55234-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Charles Lee','1-74356-844-4');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Christina Potts','0-535-44449-4');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Christine Shepherd','0-7209-5158-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Christopher Arnold','0-605-73005-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Christopher Castaneda','0-422-65084-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Cynthia Murray','0-11-679653-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Dakota Nguyen','0-339-99775-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('David Austin','0-682-60823-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('David Hill','1-252-07816-1');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('David Warren','0-14-339473-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Dawn Miller','0-88765-109-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Debra Rogers','1-171-18855-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Denise Davis','1-119-52131-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Derek Lee','1-75548-904-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Devin Hickman','0-7449-7965-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Don Fuentes','0-369-80394-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Donald Roberts','0-7695-7817-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Elizabeth Flores','1-70918-017-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Elizabeth Hall','1-257-90921-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Eric Zimmerman','1-872529-49-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Erik Wilson','0-907139-00-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Gregory Bartlett','1-121-56234-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Harry Jones','1-922226-51-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Heather Ellis','1-66925-440-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jacqueline Garcia','0-89255-515-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jacqueline Trevino','0-12-836233-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jamie Frey','1-79570-496-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jason Davis','1-998414-74-4');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jennifer Stevens','1-02-896403-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jennifer Taylor','1-04-255280-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jeremy Bowers','1-918573-84-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Jill Murphy','1-83979-264-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Johnny Webb','0-631-06761-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Joseph Walton','1-08-257526-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Julia Sparks','0-272-92296-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Julie Stewart','1-7326174-8-1');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Katie English','0-7542-8355-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Kelly Hicks','0-9847438-5-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Kevin Crane','1-962019-54-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Kevin Russell','1-4703-1305-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Kevin Salazar','1-5351-9430-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Laurie Smith','1-185-75693-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Lee Rice','1-01-185586-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Leslie Juarez','0-9985006-0-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Linda Jones','1-08-057361-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Lori Rivas','1-63443-207-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Marco Campbell','0-674-92399-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Maria Green MD','1-351-57868-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Maria Lloyd','0-224-95234-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Martin Willis','0-8084-0632-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Melissa Flores','1-960962-52-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Michael Moore','0-89340-018-1');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Michael Scott','0-496-79893-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Michael Wise','1-4382-8868-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Michael Wright','1-01-669363-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Mitchell Torres','1-935398-09-1');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Mr. Jeffery Rogers II','0-85063-814-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Nancy Lambert','1-5255-0915-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Nancy Stevens','0-8340-8103-2');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Nicole Martinez','1-4193-7955-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Olivia Guerra','0-11-245363-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Patricia Stewart','0-7189-4746-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Rebecca Andrews','0-12-279466-4');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Rhonda Davis','0-634-34719-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Richard Moore','1-64413-859-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Robert Berry','0-446-67178-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Rodney Lopez','0-669-65575-9');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Ronald Parker','0-07-420603-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Samantha Gallagher','0-593-63674-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Sarah Williams','0-926692-82-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Scott Lambert','1-230-33861-6');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Scott Miller','1-308-86366-7');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Tami Giles','0-8421-4639-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Tammie Taylor','1-56304-974-0');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Terri Cuevas','1-4393-1745-3');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Terry Duncan','1-70216-330-X');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Vicki Young','1-4568-3005-8');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Victoria Kerr','1-189-20984-5');
Insert into SCOTT.SZERZOJE (SZERZONEV,ISBN) values ('Wendy Rodriguez','0-591-07557-1');
REM INSERTING into SCOTT.TETEL
SET DEFINE OFF;
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('0','Steven_Salazar@gmail.com','1-922226-51-3',TO_DATE(2021-9-4 18:22:37, 'yyyy-MM-dd hh:mi:ss'),'Unit 3237 Box 2048
DPO AE 54053','3');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('1','Elizabeth_Taylor@gmail.com','1-226-58671-6',TO_DATE(2021-1-11 18:48:15, 'yyyy-MM-dd hh:mi:ss'),'1869 Avila Row Apt. 609
New Kristiefort, SC 18565','1');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('2','Holly_Hall@gmail.com','0-669-65575-9',TO_DATE(2021-9-2 11:55:20, 'yyyy-MM-dd hh:mi:ss'),'102 Joseph Haven
New Jennifer, PW 23910','0');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('3','David_Hayden@gmail.com','1-998414-74-4',TO_DATE(2022-8-18 13:56:40, 'yyyy-MM-dd hh:mi:ss'),'5539 Lucas Ferry
Matthewchester, UT 29309','0');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('4','Christopher_Jensen@gmail.com','1-918573-84-0',TO_DATE(2021-8-6 10:21:38, 'yyyy-MM-dd hh:mi:ss'),'14970 Willie Parkways
Leeville, CO 73987','3');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('5','Melissa_Smith@gmail.com','0-674-92399-5',TO_DATE(2021-2-16 12:16:52, 'yyyy-MM-dd hh:mi:ss'),'3628 Douglas Falls
Bellview, NE 51786','1');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('6','Shannon_Ochoa@gmail.com','1-01-185586-0',TO_DATE(2022-10-24 17:41:23, 'yyyy-MM-dd hh:mi:ss'),'28988 Phillips Walks
South Ashley, MS 59439','3');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('7','Nicole_Moon@gmail.com','0-89255-515-7',TO_DATE(2021-12-9 20:29:27, 'yyyy-MM-dd hh:mi:ss'),'5683 Tara Valley Suite 371
East Andrea, ME 94605','0');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('8','Vanessa_Ortiz@gmail.com','0-669-65575-9',TO_DATE(2021-3-11 15:28:43, 'yyyy-MM-dd hh:mi:ss'),'5021 Welch Cliff
West Kyle, DE 10425','0');
Insert into SCOTT.TETEL (ID,EMAIL,ISBN,MIKOR,HOVA,DARABSZAM) values ('9','Caitlyn_Castillo@gmail.com','0-9985006-0-7',TO_DATE(2022-8-4 15:32:56, 'yyyy-MM-dd hh:mi:ss'),'01230 Thomas Green Suite 758
South Christinehaven, MP 20304','0');
REM INSERTING into SCOTT.UZLET
SET DEFINE OFF;
Insert into SCOTT.UZLET (CIM,NEV) values ('16095 William Falls Apt. 139
Jenniferfurt, AZ 31104','Jones-Nelson');
Insert into SCOTT.UZLET (CIM,NEV) values ('543 Colon Manor Apt. 642
New Michael, NJ 39834','Espinoza-Hansen');
Insert into SCOTT.UZLET (CIM,NEV) values ('5550 Robinson Walks
Moniqueburgh, VA 91030','Mendoza, Vazquez and Davis');
Insert into SCOTT.UZLET (CIM,NEV) values ('052 Deanna Meadows
East Audrey, MA 34953','Whitehead Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('302 Matthew Key
Wangside, AR 06182','Kirk Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('075 Simpson Underpass
Timfort, CA 61555','Shea Inc');
Insert into SCOTT.UZLET (CIM,NEV) values ('9950 Alvarado Parkways
Harperchester, FL 28914','Williamson Ltd');
Insert into SCOTT.UZLET (CIM,NEV) values ('680 Miller Common Apt. 194
North Davidside, CO 04569','Burton LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('894 Perez Plain
North Courtneyshire, VI 68038','Morrow-Parker');
Insert into SCOTT.UZLET (CIM,NEV) values ('3829 Pierce Shores
Colemanborough, SC 10427','Lopez, Cox and Perez');
Insert into SCOTT.UZLET (CIM,NEV) values ('770 Payne Divide
Pachecoview, NH 92029','Baker, Torres and Graham');
Insert into SCOTT.UZLET (CIM,NEV) values ('816 Escobar Neck Apt. 332
Hobbschester, PW 81611','Pena-Watson');
Insert into SCOTT.UZLET (CIM,NEV) values ('311 Matthew Glen Suite 582
Debramouth, IN 13074','Reyes Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('091 Chad Parkways Suite 025
Richardshire, DC 85234','Stone-Reyes');
Insert into SCOTT.UZLET (CIM,NEV) values ('74217 Castro Island Apt. 702
North Sydneybury, AS 18525','Howard, Castillo and Hale');
Insert into SCOTT.UZLET (CIM,NEV) values ('3082 Kimberly Plains Suite 814
Youngstad, OH 48339','Williams, Quinn and Stevens');
Insert into SCOTT.UZLET (CIM,NEV) values ('07670 Jerry Mountains
West Taylor, MI 83726','Collins Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('00343 Sandra Underpass
Lake Keithstad, MP 97894','Griffin PLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('64394 Brianna Camp Suite 942
Zavalaborough, AS 12918','Moore, Sanchez and Maynard');
Insert into SCOTT.UZLET (CIM,NEV) values ('10221 Katrina Rapids Suite 525
Lake Kristinborough, LA 15288','Johnson Inc');
Insert into SCOTT.UZLET (CIM,NEV) values ('09569 Megan Avenue
Port Todd, SC 89687','Edwards, Mora and Terrell');
Insert into SCOTT.UZLET (CIM,NEV) values ('80674 Nathan Flats Suite 239
North Laura, AR 72539','Decker LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('5850 Perry Cape Suite 467
Lake Cheryl, OR 88621','Lawrence, Macias and Camacho');
Insert into SCOTT.UZLET (CIM,NEV) values ('1798 David Lake
Jonesborough, GU 05126','Dyer, Jimenez and Murray');
Insert into SCOTT.UZLET (CIM,NEV) values ('841 Ferguson Ridges
New Teresaton, TN 78052','Chan, Williams and Reeves');
Insert into SCOTT.UZLET (CIM,NEV) values ('124 Jerry Drive Suite 477
Hayleyton, MS 03504','Webb and Sons');
Insert into SCOTT.UZLET (CIM,NEV) values ('USNV Palmer
FPO AE 66051','Sullivan-Smith');
Insert into SCOTT.UZLET (CIM,NEV) values ('5589 Lucas Squares Suite 219
Jordanville, AK 60218','Pacheco-Kennedy');
Insert into SCOTT.UZLET (CIM,NEV) values ('505 Knapp Mountains Suite 093
West Christopherville, MI 18172','Chang Ltd');
Insert into SCOTT.UZLET (CIM,NEV) values ('549 Moody Row Apt. 164
Allenview, AR 49379','Bonilla Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('06728 Joseph Unions
South Christina, CT 28332','Carrillo LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('1795 Mendez Route
East Rhonda, NC 99125','Alvarado PLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('44751 Victoria Plains
East Kristenberg, KS 24544','Humphrey Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('417 Freeman Fall
Markstad, UT 02063','Morse and Sons');
Insert into SCOTT.UZLET (CIM,NEV) values ('842 Robert Heights
Moorechester, LA 79996','Obrien LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('08130 Rodriguez Tunnel
Penningtonland, WA 64955','Murray-Hood');
Insert into SCOTT.UZLET (CIM,NEV) values ('34441 Rhonda Burgs
Randallton, TX 06263','Rogers Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('43838 Thomas Viaduct Apt. 559
South Davidbury, ND 90460','Stark-Owen');
Insert into SCOTT.UZLET (CIM,NEV) values ('USNS White
FPO AP 10381','Young, Durham and Clark');
Insert into SCOTT.UZLET (CIM,NEV) values ('94091 Martinez Fork
Lake Brianaport, DC 92386','Perkins-Rivera');
Insert into SCOTT.UZLET (CIM,NEV) values ('46229 Perez Route
Nicholechester, OH 79819','Moreno, Martinez and Perez');
Insert into SCOTT.UZLET (CIM,NEV) values ('6343 Jesse Trail
Walkerland, GA 37112','Ingram, Jones and Joseph');
Insert into SCOTT.UZLET (CIM,NEV) values ('705 Evan Mews Apt. 797
Garyfurt, DE 11692','Pollard and Sons');
Insert into SCOTT.UZLET (CIM,NEV) values ('54552 Karl Club Apt. 720
Schwartzview, NM 30979','Wheeler-Gibbs');
Insert into SCOTT.UZLET (CIM,NEV) values ('30477 Darrell Tunnel Apt. 890
Grantbury, ID 37713','Deleon-Murray');
Insert into SCOTT.UZLET (CIM,NEV) values ('3687 Carter Dale Suite 575
Martinton, GU 36388','Jones LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('44932 Kimberly Views Suite 242
Jeffreymouth, WY 75624','Garrison-Nguyen');
Insert into SCOTT.UZLET (CIM,NEV) values ('14909 Katie Ranch Suite 636
Howardland, MH 67554','Smith-Velez');
Insert into SCOTT.UZLET (CIM,NEV) values ('PSC 3792, Box 2052
APO AP 09908','Larsen LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('7649 Brooks Canyon
South Deborah, AL 45815','Martin, Day and Rodriguez');
Insert into SCOTT.UZLET (CIM,NEV) values ('USCGC Reese
FPO AE 73039','Parks-Page');
Insert into SCOTT.UZLET (CIM,NEV) values ('685 Anderson Junctions
Josephtown, IL 42155','Ramirez, Waters and Smith');
Insert into SCOTT.UZLET (CIM,NEV) values ('32379 Stephanie Expressway
East Michaelstad, HI 63114','Garcia, Miller and Mitchell');
Insert into SCOTT.UZLET (CIM,NEV) values ('PSC 2023, Box 7271
APO AE 76073','Kennedy-Irwin');
Insert into SCOTT.UZLET (CIM,NEV) values ('Unit 5644 Box 3060
DPO AE 02584','Steele PLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('37703 Christopher Isle Apt. 901
Jessicaview, DE 38867','Hopkins, Wright and Baird');
Insert into SCOTT.UZLET (CIM,NEV) values ('USNS Murillo
FPO AA 95885','Carpenter, Moran and Reyes');
Insert into SCOTT.UZLET (CIM,NEV) values ('219 Trevor Bridge
Marissamouth, MO 67910','Wiley-Torres');
Insert into SCOTT.UZLET (CIM,NEV) values ('9188 Alexander Prairie
Jessicashire, SC 59460','Cochran, Bennett and Miller');
Insert into SCOTT.UZLET (CIM,NEV) values ('56737 Wilson Union
Tammyside, PW 15326','Saunders, Diaz and Singleton');
Insert into SCOTT.UZLET (CIM,NEV) values ('Unit 7003 Box 8530
DPO AP 42350','Walker, Castaneda and Clark');
Insert into SCOTT.UZLET (CIM,NEV) values ('20960 Andrea Row
Davidhaven, MO 89313','Bentley PLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('5999 Roger Pike
East Frances, WA 68633','Rivers Ltd');
Insert into SCOTT.UZLET (CIM,NEV) values ('744 Brandy Forks
East David, PR 55764','Jenkins PLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('97637 Holmes Garden Apt. 257
North Randall, LA 33449','May LLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('28993 Morgan Rapid
South Scott, CT 53223','Smith-Johnson');
Insert into SCOTT.UZLET (CIM,NEV) values ('9115 Beck Rapid Suite 513
Jamestown, SD 54646','Hall-Casey');
Insert into SCOTT.UZLET (CIM,NEV) values ('34857 Matthew Roads
Christianton, AL 41331','Walker Ltd');
Insert into SCOTT.UZLET (CIM,NEV) values ('552 Boone Knoll
Oconnorburgh, WA 50290','Miller-Johnson');
Insert into SCOTT.UZLET (CIM,NEV) values ('Unit 4907 Box 3634
DPO AE 40368','Morales PLC');
Insert into SCOTT.UZLET (CIM,NEV) values ('45330 Robert Summit Apt. 219
Smithmouth, GU 99270','Conner, Hill and Beasley');
Insert into SCOTT.UZLET (CIM,NEV) values ('44014 Keller Springs
North Monica, MI 89342','Chavez Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('1853 Schwartz Unions
Thomasmouth, SC 72261','Woodward, Miller and Blair');
Insert into SCOTT.UZLET (CIM,NEV) values ('825 Young Manor Apt. 552
Port Donna, VI 76305','Miller-Rodriguez');
Insert into SCOTT.UZLET (CIM,NEV) values ('1034 Moore Bridge Suite 496
West Kyleburgh, TN 35410','Kennedy, Mathis and Mcdonald');
Insert into SCOTT.UZLET (CIM,NEV) values ('57345 Alan Spring Suite 629
Joshuatown, PW 68264','Morgan-Butler');
Insert into SCOTT.UZLET (CIM,NEV) values ('1789 Evans Drive Suite 376
Christyland, VI 45334','Scott-Lee');
Insert into SCOTT.UZLET (CIM,NEV) values ('13470 Cervantes Mount Apt. 409
Phelpsburgh, AS 92550','Jones Group');
Insert into SCOTT.UZLET (CIM,NEV) values ('1155 Karen Lock
West Nicholas, PA 61815','Caldwell Inc');
Insert into SCOTT.UZLET (CIM,NEV) values ('50588 Jeffrey Neck
West Suzannemouth, PA 97380','Thomas, Perry and Woods');
Insert into SCOTT.UZLET (CIM,NEV) values ('7145 Jacqueline Plaza Suite 266
Markview, GA 55643','Silva-Horn');
Insert into SCOTT.UZLET (CIM,NEV) values ('131 Gibson Shores
New Jenniferberg, WV 68502','Martinez, Morrow and Parker');
Insert into SCOTT.UZLET (CIM,NEV) values ('27452 Alexis Port
Emilyberg, IN 60713','Parker, Larson and Ortiz');
Insert into SCOTT.UZLET (CIM,NEV) values ('11885 Carter Orchard Apt. 562
North Jacobtown, NC 93427','Lester and Sons');
Insert into SCOTT.UZLET (CIM,NEV) values ('2717 Todd Plains
Shelbyville, DE 85545','Cabrera-Baker');
Insert into SCOTT.UZLET (CIM,NEV) values ('280 Robinson Court Apt. 387
New Amandaburgh, NM 51555','Russell-Flores');
Insert into SCOTT.UZLET (CIM,NEV) values ('660 Johnson Forges Suite 394
South Jefferyberg, MA 84840','Parrish-Martin');
Insert into SCOTT.UZLET (CIM,NEV) values ('7128 Collins Branch Suite 166
West Zacharyberg, WY 55534','Bailey-Lester');
Insert into SCOTT.UZLET (CIM,NEV) values ('23504 Snyder Spring
Williamhaven, TX 40986','Hart Ltd');
Insert into SCOTT.UZLET (CIM,NEV) values ('45871 Dwayne Curve Apt. 783
Michaelberg, MO 24544','White, Richardson and Vargas');
Insert into SCOTT.UZLET (CIM,NEV) values ('92299 Black Prairie Apt. 069
Lisashire, GA 89031','Swanson-Johnson');
Insert into SCOTT.UZLET (CIM,NEV) values ('63978 Kelly Creek Suite 256
East Martin, NM 06824','Avila, Greer and Ford');
Insert into SCOTT.UZLET (CIM,NEV) values ('73044 Thomas Estates
Jasonberg, VT 52303','Leon Ltd');
Insert into SCOTT.UZLET (CIM,NEV) values ('5087 Andrew Common Suite 386
Melissastad, KS 53090','Parker, Johnson and Berry');
Insert into SCOTT.UZLET (CIM,NEV) values ('90140 Joshua Club Suite 882
Ronaldshire, NC 21029','Williamson and Sons');
Insert into SCOTT.UZLET (CIM,NEV) values ('343 Courtney Loaf
South Robert, CO 16510','Hardy, Fitzgerald and Smith');
Insert into SCOTT.UZLET (CIM,NEV) values ('7940 Ryan Gardens Apt. 172
East Jacobside, AZ 94322','Wallace-Stafford');
Insert into SCOTT.UZLET (CIM,NEV) values ('060 Hess Valleys Suite 028
Kimberlyhaven, MP 57817','Webb-Ward');
Insert into SCOTT.UZLET (CIM,NEV) values ('1627 Harris Highway
Christopherfort, KY 99615','Taylor and Sons');
Insert into SCOTT.UZLET (CIM,NEV) values ('5257 Gina Point
Goodwinview, CT 21898','Lewis-Green');
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
