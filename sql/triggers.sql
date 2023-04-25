-- admin felhasználót nem törölhetünk
CREATE OR REPLACE TRIGGER trg_forbid_admin_delete
BEFORE DELETE ON felhasznalo
FOR EACH ROW
BEGIN
  IF :OLD.szerep = 'admin' THEN
    RAISE_APPLICATION_ERROR(-20001, 'Deleting admin users is not allowed!');
  END IF;
END;
/

-- mufaj tábla frissítése on könyv insert ('ismeretlen')/delete
CREATE OR REPLACE TRIGGER add_ismeretlen_mufaj_trigger
AFTER INSERT ON konyv
FOR EACH ROW
BEGIN
  INSERT INTO mufaja (mufajnev, isbn) VALUES ('ismeretlen', :NEW.isbn);
END;
/

-- ismeretlen mufaj torlese ha adunk hozza mas mufajt
CREATE OR REPLACE TRIGGER remove_ismeretlen_mufaja_trigger
BEFORE INSERT ON mufaja
FOR EACH ROW
BEGIN
  DELETE FROM mufaja
  WHERE mufajnev = 'ismeretlen' AND isbn = :NEW.isbn;
END;
/

-- szerzoje tábla frissítése on könyv insert ('ismeretlen')/delete
CREATE OR REPLACE TRIGGER add_ismeretlen_szerzo_trigger
AFTER INSERT ON konyv
FOR EACH ROW
BEGIN
  INSERT INTO szerzoje (szerzonev, isbn) VALUES ('ismeretlen', :NEW.isbn);
END;
/

-- ismeretlen szerzo torlese ha adunk hozza mas szerzot
CREATE OR REPLACE TRIGGER remove_ismeretlen_szerzoje_trigger
BEFORE INSERT ON szerzoje
FOR EACH ROW
BEGIN
  DELETE FROM szerzoje
  WHERE szerzonev = 'ismeretlen' AND isbn = :NEW.isbn;
END;

