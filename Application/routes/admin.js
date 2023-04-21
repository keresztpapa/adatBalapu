var express = require("express");
var router = express.Router();
const { getConnection } = require("../database");

/* GET listings. */
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

    const columnNames = await connection.client.execute(`
        SELECT column_name
        FROM USER_TAB_COLS
        WHERE TABLE_NAME = '${table_name}'`
    );

    // Map column_names to formfields
    const formFields = columnNames.rows.map(columnName => ({
      name: columnName,
      label: columnName,
      type: 'text',
      required: true,
      minLength: 3,
      maxLength: 255,
    }));


    const data = await connection.client.execute(
      `SELECT * FROM ${table_name}`
    );

    await connection.close();

    // Render the data on an HTML page using a view template
    res.render("admin", { rows: data.rows, columnNames: columnNames.rows, formFields: formFields });
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

// New record submit form handler
router.post("/:table/submitNewRecord", async (req, res) => {
  // Logging some stuff
  console.log(req.body);
  var table_name = req.params["table"];
  console.log("Insert new | Table name: " + table_name);

  // TODO Indicate that the insertion wasn't successful
  // TODO Triggers? blushingemoji

  try {
    // Get a connection to the Oracle database
    const connection = await getConnection();

    // Create comma separated string, each element is between a ''
    const values = Object.values(req.body);
    const dataToInsert = values.map(value => {
      const numberValue = Number(value);
      if (!isNaN(numberValue)) {
        return numberValue;
      } else if (typeof value === 'string') {
        return `'${value}'`;
      } else {
        return value;
      }
    }).join(', ');

    console.log(dataToInsert);
    console.log("SQL Query: \n");
    console.log(`INSERT INTO ${table_name} VALUES (${dataToInsert})`);
    // Dynamically add new data to table
    await connection.client.execute(
      `INSERT INTO ${table_name} VALUES (${dataToInsert})`
    );
    await connection.client.execute(`COMMIT`);



    // Release the connection back to the pool
    await connection.close();

    // Render the data on an HTML page using a view template
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }

  res.redirect(`/admin/${table_name}`);
  return;
});

module.exports = router;
