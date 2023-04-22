var express = require('express');
var router = express.Router();

const { getConnection } = require("../database");
const { render } = require('ejs');

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.render("kosar");
});

router.get('/orders', async (req, res) => {
    try {
      const connection = await getConnection();
  
      const result = await conn.execute( `SELECT id, email, isbn, darabszam, hova FROM orders`);
  
      await conn.release();
      
      res.render('orders', { orders: result.rows });
    } catch (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    }
  });

module.exports = router;
