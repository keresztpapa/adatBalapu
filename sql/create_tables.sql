CREATE TABLE uzlet (
  cim VARCHAR2(100) CONSTRAINT uzl_cim_pk PRIMARY KEY,
  nev VARCHAR2(100) CONSTRAINT uzl_nev_nn NOT NULL
);

CREATE TABLE konyv (
  isbn VARCHAR2(13) CONSTRAINT knyv_isbn_pk PRIMARY KEY,
  boritokep BLOB,
  ar NUMBER(10, -1) CONSTRAINT knyv_ar_nn NOT NULL,
  kotes VARCHAR2(20),
  cim VARCHAR2(100) CONSTRAINT knyv_cim_nn NOT NULL,
  oldalszam NUMBER(5)
);

CREATE TABLE kiado (
  nev VARCHAR2(100) CONSTRAINT nev_pk PRIMARY KEY,
  cim VARCHAR2(100) CONSTRAINT cim_nn NOT NULL,
  telefon VARCHAR2(20)
);

CREATE TABLE kiadta (
  nev VARCHAR2(100), 
  isbn VARCHAR2(13),
  mikor DATE,

  CONSTRAINT kdta_pk PRIMARY KEY (nev, isbn, mikor),
  CONSTRAINT kdta_nev_fk FOREIGN KEY (nev) REFERENCES kiado(nev),
  CONSTRAINT kdta_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE
);

CREATE TABLE szerzoje (
  szerzonev VARCHAR2(100),
  isbn VARCHAR2(13),

  CONSTRAINT szrzj_pk PRIMARY KEY (szerzonev, isbn),
  CONSTRAINT szrzj_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE
);

CREATE TABLE mufaja (
  mufajnev VARCHAR2(100),
  isbn VARCHAR2(13),

  CONSTRAINT mfj_pk PRIMARY KEY (mufajnev, isbn),
  CONSTRAINT mfj_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE
);

CREATE TABLE felhasznalo(
  email VARCHAR2(100) CONSTRAINT usr_email_pk PRIMARY KEY,
  nev VARCHAR2(100) CONSTRAINT usr_nev_nn NOT NULL,
  jelszo VARCHAR2(32) CONSTRAINT usr_jelszo_nn NOT NULL,
  cim VARCHAR(100),
  telefon VARCHAR(20) CONSTRAINT usr_telefon_nn NOT NULL,
  szerep VARCHAR(10) CONSTRAINT usr_szerep_nn NOT NULL
);

CREATE TABLE kedvence (
  isbn VARCHAR2(13),
  email VARCHAR2(100),

  CONSTRAINT kdvnc_pk PRIMARY KEY (email, isbn),
  CONSTRAINT kdvnc_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE,
  CONSTRAINT kdvnc_email_fk FOREIGN KEY (email) REFERENCES felhasznalo(email) ON DELETE CASCADE
);

CREATE TABLE ertekeles (
  isbn VARCHAR2(13),
  email VARCHAR2(100),
  pontszam NUMBER(1) CONSTRAINT ertek_pontszam_nn NOT NULL,
  megjegyzes VARCHAR2(500),

  CONSTRAINT ertek_pk PRIMARY KEY (email, isbn),
  CONSTRAINT ertek_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE,
  CONSTRAINT ertek_email_fk FOREIGN KEY (email) REFERENCES felhasznalo(email) ON DELETE CASCADE
);

CREATE TABLE tetel (
  id NUMBER CONSTRAINT ttl_id_pk PRIMARY KEY, 
  email VARCHAR2(100) CONSTRAINT ttl_email_nn NOT NULL,
  isbn VARCHAR2(13) CONSTRAINT ttl_isbn_nn NOT NULL,
  mikor DATE,
  hova VARCHAR2(100),
  darabszam NUMBER(2, 0) CONSTRAINT ttl_darabszam_nn NOT NULL, 

  CONSTRAINT ttl_email_fk FOREIGN KEY (email) REFERENCES felhasznalo(email) ON DELETE CASCADE,
  CONSTRAINT ttl_isbn_fk FOREIGN KEY (isbn) REFERENCES konyv(isbn) ON DELETE CASCADE
);

COMMIT;