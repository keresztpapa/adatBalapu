var express = require("express");
var router = express.Router();

const { getConnection } = require("../database");

router.get("/", async (req, res) => {
  try {
    // Get a connection to the Oracle database
    const connection = await getConnection();

    // Execute the SQL query to fetch the data
    const konyv_adatok = await connection.client.execute(`
    SELECT konyv.isbn, konyv.cim, szerzoje.szerzonev, mufaja.mufajnev, konyv.ar, 
    (SELECT avg(ertekeles.pontszam) AS avg_rating FROM ertekeles WHERE ertekeles.isbn = konyv.isbn),
     kiado.nev
    FROM konyv, szerzoje, mufaja, kiado, kiadta 
    WHERE konyv.isbn = szerzoje.isbn AND konyv.isbn = mufaja.isbn AND kiadta.isbn = konyv.isbn AND kiado.nev = kiadta.nev`);
    
    // Release the connection back to the pool
    await connection.close();

  
    // Render the data on an HTML page using a view template
    res.render("konyvek", { rows: konyv_adatok.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

router.post('/kosar/add/:isbn', async (req, res) => {
  const isbn = req.body.isbn;
  const quantity = req.body.quantity;
  const email = null;
  const hova = null;

  try {
    connection = await oracledb.getConnection();

    const result = await connection.execute(
      `INSERT INTO tetel (id, email, isbn, darabszam, hova) VALUES (cart_seq.NEXTVAL, :email, :isbn, :quantity, :hova)`,
      {
        email: email,
        isbn: isbn,
        quantity: quantity,
        hova: hova
      },
      { autoCommit: true }
    );

    console.log("Rows inserted: " + result.rowsAffected);
  } catch (err) {
    console.error(err);
  } finally {
    if (connection) {
      try {
        await connection.close();
      } catch (err) {
        console.error(err);
      }
    }
  }

  res.redirect('/konyvek/' + isbn);
});
module.exports = router;
