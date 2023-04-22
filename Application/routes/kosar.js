var express = require('express');
var router = express.Router();

const { getConnection } = require("../database");
const { render } = require('ejs');


// GET users listing. 
router.get('/', async (req, res) => {
  try {
    const conn = await getConnection();

    const result = await conn.client.execute(`SELECT id, email, isbn, darabszam, hova FROM tetel`);

    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
});

router.get('/kosar/add/:isbn', async (req, res) => {
  try {
    const conn = await getConnection();

    const result = await conn.client.execute(`SELECT id, email, isbn, darabszam, hova FROM tetel`);

    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
});

module.exports = router;
