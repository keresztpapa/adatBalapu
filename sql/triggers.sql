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

-- kitöröljük a törlendő felhasználó tételeit is
CREATE OR REPLACE TRIGGER trg_delete_tetel_on_felhasznalo_delete
BEFORE DELETE ON felhasznalo
FOR EACH ROW
BEGIN
  DELETE FROM tetel
  WHERE email = :OLD.email;
END;
/

-- kiadta tábla frissítése on könyv insert/delete
CREATE OR REPLACE TRIGGER update_kiadta
AFTER INSERT OR DELETE ON konyv
FOR EACH ROW
DECLARE
BEGIN
  IF INSERTING THEN
    INSERT INTO kiadta (nev, isbn, mikor)
    VALUES (:NEW.cim, :NEW.isbn, EXTRACT(YEAR FROM SYSDATE));
  ELSE
    DELETE FROM kiadta
    WHERE isbn = :OLD.isbn;
  END IF;
END;
/

-- mufaj tábla frissítése on könyv insert ('ismeretlen')/delete
CREATE OR REPLACE TRIGGER tie_mufaj_trigger
AFTER INSERT OR DELETE ON konyv
FOR EACH ROW
DECLARE
  mufaj mufaja.mufajnev%TYPE;
BEGIN
  IF INSERTING THEN
    INSERT INTO mufaja (mufajnev, isbn) VALUES ('ismeretlen', :NEW.isbn);
  END IF;
  
  IF DELETING THEN
    DELETE FROM mufaja WHERE isbn = :OLD.isbn;
  END IF;
END;
/

-- ismeretlen mufaj torlese ha adunk hozza mas mufajt
CREATE OR REPLACE TRIGGER remove_ismeretlen_mufaja
BEFORE INSERT ON mufaja
FOR EACH ROW
BEGIN
  DELETE FROM mufaja
  WHERE mufajnev = 'ismeretlen' AND isbn = :NEW.isbn;
END;

