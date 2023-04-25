-- könyv átlagos értékelése
CREATE OR REPLACE FUNCTION get_average_rating(
    p_isbn IN VARCHAR2
) RETURN NUMBER
IS
    v_total_ratings NUMBER := 0;
    v_num_ratings NUMBER := 0;
BEGIN
    SELECT SUM(pontszam), COUNT(*) 
    INTO v_total_ratings, v_num_ratings 
    FROM ertekeles 
    WHERE isbn = p_isbn;

    IF v_num_ratings = 0 THEN
        RETURN 0;
    ELSE
        RETURN v_total_ratings / v_num_ratings;
    END IF;
END;
/

-- legmagasabbra ertekelt konyv
CREATE OR REPLACE FUNCTION highest_rated_book RETURN VARCHAR2 AS
  v_isbn VARCHAR2(13);
BEGIN
  SELECT isbn
  INTO v_isbn
  FROM (
    SELECT isbn, AVG(pontszam) AS avg_pontszam
    FROM ertekeles
    GROUP BY isbn
    ORDER BY avg_pontszam DESC
  )
  WHERE ROWNUM = 1;
  RETURN v_isbn;
END;
/

-- kedvenc hozzaadasa
CREATE OR REPLACE PROCEDURE SCOTT.add_favorite(p_email IN VARCHAR2, p_isbn IN VARCHAR2)
IS
BEGIN
  INSERT INTO SCOTT.kedvence (email, isbn)
  VALUES (p_email, p_isbn);
  
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Book with ISBN ' || p_isbn || ' has been added to favorites for user with email ' || p_email);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occurred: ' || SQLERRM);
END;
/

-- kedvenc torlese
CREATE OR REPLACE PROCEDURE SCOTT.remove_favorite(p_email IN VARCHAR2, p_isbn IN VARCHAR2)
IS
BEGIN
  DELETE FROM SCOTT.kedvence
  WHERE email = p_email
  AND isbn = p_isbn;
  
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Book with ISBN ' || p_isbn || ' has been removed from favorites for user with email ' || p_email);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occurred: ' || SQLERRM);
END;
/

-- szerző könyveinek száma
CREATE OR REPLACE FUNCTION count_books_by_author(author_name IN VARCHAR2) RETURN NUMBER IS
  book_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO book_count
  FROM szerzoje s
  WHERE s.szerzonev = author_name;
  RETURN book_count;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;
END;
/

-- function example usage:

-- async function getBookCountByAuthor(authorName) {
--   let conn;
--   try {
--     conn = await oracledb.getConnection({
--       user: "your_username",
--       password: "your_password",
--       connectString: "your_connection_string"
--     });

--     const result = await conn.execute(
--       `BEGIN
--         :count := get_book_count_by_author(:authorName);
--       END;`,
--       {
--         authorName: authorName,
--         count: { dir: oracledb.BIND_OUT, type: oracledb.NUMBER }
--       }
--     );

--     return result.outBinds.count;
--   } catch (err) {
--     console.error(err);
--   } finally {
--     if (conn) {
--       await conn.close();
--     }
--   }
-- }

-- const bookCount = await getBookCountByAuthor('J.K. Rowling');
-- console.log(`J.K. Rowling has written ${bookCount} books.`);