var express = require("express");
var router = express.Router();
const { getConnection } = require("../database");

/* GET users listing. */
router.get("/", function (req, res, next) {
  res.render("admin");
});

router.get("/:table", async (req, res) => {
  console.log(req.params);
  var table_name = req.params["table"];
  if (table_name === undefined) table_name = "konyv";

  table_name = table_name.toUpperCase();

  try {
    // Get a connection to the Oracle database
    const connection = await getConnection();

    const column_names = await connection.client.execute(`
        SELECT column_name
        FROM USER_TAB_COLS
        WHERE TABLE_NAME = '${table_name}'`
    );

    const data = await connection.client.execute(
      `SELECT * FROM ${table_name}`
    );

    await connection.close();

    // Render the data on an HTML page using a view template
    res.render("admin", { rows: data.rows, column_names: column_names.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

module.exports = router;
