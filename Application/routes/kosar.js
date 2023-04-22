var express = require('express');
var router = express.Router();

const { getConnection } = require("../database");
const { render } = require('ejs');

// GET users listing. 
router.get('/', async (req, res) => {
  try {
    const conn = await getConnection();

    const result = await conn.client.execute(`SELECT email, cim, darabszam, hova FROM tetel, konyv WHERE tetel.isbn = konyv.isbn`);
    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
});

router.get('/kosar', async (req, res) => {

});

router.get('/kosar', async (req, res) => {

});

router.get('/kosar', async (req, res) => {
/*  
  try {
    const conn = await getConnection();

    const result = await conn.client.execute(`SELECT id, email, isbn, darabszam, hova FROM tetel`);

    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
  */
});
router.get('/kosar', async (req, res) => {
/*  
  try {
    const conn = await getConnection();

    const result = await conn.client.execute(`SELECT id, email, isbn, darabszam, hova FROM tetel`);

    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
  */
});
router.get('/kosar', async (req, res) => {

});

module.exports = router;
