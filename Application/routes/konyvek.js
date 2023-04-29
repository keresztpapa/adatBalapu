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


router.post('/add_into_cart', async (req, res) => {
  const isbn = req.body.isbn;
  const quantity = 1;
  const email = req.session.user.email;

  try {

    const connection = await getConnection();

    const result = await connection.client.execute(
      `SELECT MAX(id) FROM tetel`
    );
    const nextId = result.rows[0]+1;

    const result1 = await connection.client.execute(
      `SELECT cim FROM felhasznalo WHERE email = :email`, [email]
    );

    const user_addr = result1.rows;
    
    //console.log(email);
    //console.log(user_addr[0][0]);
    //console.log(`Received ISBN: ${isbn}`);

    const insertResult = await connection.client.execute(
      `INSERT INTO tetel (id, email, isbn, darabszam, hova)
       VALUES (:id, :email, :isbn, :quantity, :hova)`,
      [nextId, email, isbn, quantity, user_addr[0][0]]
    );

    await connection.client.execute(`COMMIT`);

    console.log("Rows inserted: " + result);

    await connection.close();

    res.status(200).json({message: "Item added to cart."});
  } catch (err) {
    console.error(err);
    res.status(500).json({message: "Internal server error"});
  }
});

router.post('/toggle_favorite', async (req, res) => {
  const isbn = req.body.isbn;
  function removeItemOnce(arr, value) {
    var index = arr.indexOf(value);
    if (index > -1) {
      arr.splice(index, 1);
    }
    return arr;
  }
  try {
  console.log(req.session.user.favorites);
  if(req.session.user.favorites.includes(isbn)){
    let connection = await getConnection();
    removeItemOnce(req.session.user.favorites, isbn);
    connection.client.execute("BEGIN remove_favorite('"+req.session.user.email+"','"+isbn+"'); END;")
    res.status(200).json({message: "Sikeresen eltávolítva."});
  } else {
    let connection = await getConnection();
    connection.client.execute("BEGIN add_favorite('"+req.session.user.email+"','"+isbn+"'); END;")
    req.session.user.favorites.push(isbn);
    console.log(req.session.user.favorites);
    res.status(200).json({message: "Sikeresen hozzáadva."});
  }

  } catch (err) {
    console.error(err);
    res.status(500).json({message: "Internal server error"});
  }

});

module.exports = router;
