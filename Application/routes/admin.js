var express = require("express");
var router = express.Router();
const { getConnection } = require("../database");

function isLoggedIn(req, res, next) {
  if (req.session.user) {
    return next();
  }
  res.redirect('/login');
}

function isAdmin(req, res, next) {
  if (req.session.user && req.session.user.isAdmin) {
    return next();
  }
  res.redirect('/');
}

router.get('/admin', isLoggedIn, isAdmin, (req, res) => {
  res.render('admin');
});

/*
router.get('/', isAuthenticated(), function(req, res, next) {
  res.render('admin');
});
*/

function isLoggedIn(req, res, next) {
  if (req.session.user) {
    return next();
  }
  res.redirect('/login');
}

function isAdmin(req, res, next) {
  if (req.session.user && req.session.user.isAdmin) {
    return next();
  }
  res.redirect('/');
}

router.get('/admin', isLoggedIn, isAdmin, (req, res) => {
  res.render('admin');
});

/*
// GET listings. 
router.get("/", function (req, res, next) {
  res.render("admin");
});
*/
*/

router.get("/:table", isLoggedIn, isAdmin, async (req, res) => {
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

    req.session.table = table_name;
    req.session.columnNames = columnNames.rows;
    req.session.rows = data.rows;

    req.session.table = table_name;
    req.session.columnNames = columnNames.rows;
    req.session.rows = data.rows;

    // Render the data on an HTML page using a view template
    res.render("admin", { tableName: table_name, rows: data.rows, columnNames: columnNames.rows, formFields: formFields });
    res.render("admin", { tableName: table_name, rows: data.rows, columnNames: columnNames.rows, formFields: formFields });
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

// New record submit form handler
router.post("/:table/submitNewRecord", isLoggedIn, isAdmin, async (req, res) => {
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
    console.error(err.message);
    res.status(500).send("Internal Server Error");
  }

  res.redirect(`/admin/${table_name}`);
  return;
});


// delete record button handler
router.get("/:table/deleteRecord/:i", async (req, res) => {
  // Logging some stuff
  console.log(req.body);
  let table_name = req.params["table"];
  let row_at = req.params["i"];

  try {
    // Get a connection to the Oracle database
    const connection = await getConnection();

    let conditions = '';
    let columnNames = req.session.columnNames;
    let rows = req.session.rows;
    for (let i = 0; i < columnNames.length; ++i){
      if (i !== 0) conditions += ' AND ';
      if (isInteger(rows[row_at][i]))
        conditions += `${columnNames[i]} = ${rows[row_at][i]}`;
      else if (rows[row_at][i] === null)
        conditions += `${columnNames[i]} IS NULL`;
      else conditions += `${columnNames[i]} LIKE '${rows[row_at][i]}'`;
    }

    console.log("SQL Query: \n");
    console.log(`DELETE FROM ${table_name} WHERE ` + conditions);
    await connection.client.execute(
      `DELETE FROM ${table_name} WHERE ` + conditions
    );
    await connection.client.execute(`COMMIT`);

    // Release the connection back to the pool
    await connection.close();

    // Render the data on an HTML page using a view template
  } catch (err) {
    console.error(err.message);
    res.status(500).send("Internal Server Error");
    return;
  }

  res.redirect(`/admin/${table_name}`);
  return;
});

function isInteger(str) {
  // Regular expression that matches an optional "-" sign followed by one or more digits
  const integerPattern = /^-?\d+$/;
  return integerPattern.test(str);
}

module.exports = router;
