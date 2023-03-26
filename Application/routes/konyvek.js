var express = require("express");
var router = express.Router();

const { getConnection } = require("../database");

router.get("/", async (req, res) => {
  try {
    // Get a connection to the Oracle database
    const connection = await getConnection();

    // Execute the SQL query to fetch the data
    const result = await connection.client.execute("SELECT * FROM konyv");
    console.log(result);
    // Release the connection back to the pool
    await connection.close();

    // Render the data on an HTML page using a view template
    res.render("konyvek", { rows: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

module.exports = router;
