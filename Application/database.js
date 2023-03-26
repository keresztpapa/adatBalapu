const Oracle = require("oracle-ssh");

// User configurations from config.js
const cfg = require("./config.js").getConfig();

// Open connection
async function getConnection() {
  const connection = await Oracle.connect(
    {
      host: "linux.inf.u-szeged.hu", // Your server host name
      port: 22, // Your server ssh port as default in ssh is 22
      user: cfg.ssh_username, // Your server username
      password: cfg.ssh_password, // Your server password
    },
    {
      host: "orania2.inf.u-szeged.hu", // Your database host in server as default is localhost
      port: 1521, // Your database port in server as default is 1521
      user: cfg.db_username, // Your database user
      password: cfg.db_password, // Your database password
      database: "ORANIA2.INF.U-SZEGED.HU", // Your database name
    });
    return connection;
}

module.exports = {
  getConnection,
};