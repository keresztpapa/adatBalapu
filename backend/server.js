const port = 5000;
const express = require('express');
const oracledb = require('oracledb');
const {resolve} = require('path');
const app = express();

var path = require('path');

app.use(express.static(path.join(__dirname, '../frontend')));
app.use(express.static(path.join(__dirname, '../frontend/html')));
app.use(express.static(path.join(__dirname, '../frontend/css')));

const index = resolve('../frontend/html/index.html');

app.get('/', (req, res) => res.sendFile(index));
app.get('/index', (req, res) => res.sendFile(index));

async function run() {
    try {
      connection = await oracledb.getConnection({
        user: "SCOTT",
        password: "tiger",
        connectString : "localhost:1521/XE"
      });
      result = await connection.execute(`SELECT * FROM kedvence`);
      console.log("Result is:", result);
    } catch (err) {
      console.error(err.message);
    } finally {
      if (connection) {
        try {
          await connection.close();
        } catch (err) {
          console.error(err.message);
        }
      }
    }
}
run();

app.listen(port, () => console.log(`App listening at http://localhost:${port}`));