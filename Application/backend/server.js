const port = 5000;
const express = require('express');
const Oracle = require('oracle-ssh');
const oracledb = require('oracledb');
const {resolve} = require('path');
const cfg = require('./config.js').getConfig();
const app = express();


var path = require('path');
app.use(express.static(path.join(__dirname, '../frontend')));
app.use(express.static(path.join(__dirname, '../frontend/html')));
app.use(express.static(path.join(__dirname, '../frontend/css')));

const index = resolve('../frontend/html/index.html');

app.get('/', (req, res) => res.sendFile(index));
app.get('/index', (req, res) => res.sendFile(index));

async function init() {
    let connection;
    try {
        connection = await Oracle.connect(
            {
                host: 'linux.inf.u-szeged.hu', // Your server host name
                port: 22, // Your server ssh port as default in ssh is 22
                user: cfg.ssh_username, // Your server username
                password: cfg.ssh_password // Your server password
            },
            {
                host: "orania2.inf.u-szeged.hu", // Your database host in server as default is localhost
                port: 1521, // Your database port in server as default is 1521
                user: cfg.db_username, // Your database user
                password: cfg.db_password, // Your database password
                database: "ORANIA2.INF.U-SZEGED.HU" // Your database name
            }
        );

	
        // Now the pool is running, it can be used
	const sql = `SELECT * FROM egyetemek`;
        result = await connection.client.execute(sql);
      	console.log("Result is:", result);
 
    } catch (err) {
        console.error(err);
    } finally {
        if (connection) {
            try {
                await connection.close();
            } catch (err) {
                throw err;
            }
        }
    }

}
init();

app.listen(port, () => console.log(`App listening at http://localhost:${port}`));