var express = require('express');
var router = express.Router();

const { getConnection } = require("../database");
const { render } = require('ejs');

// GET users listing. 
router.get('/', async (req, res) => {
  try {
    const conn = await getConnection();

    const email = req.session.user.email;
    
    const result = await conn.client.execute(`SELECT email, isbn, darabszam, hova FROM tetel`);
    console.log(result);
    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
});

module.exports = router;
