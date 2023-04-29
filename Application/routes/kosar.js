var express = require('express');
var router = express.Router();

const { getConnection } = require("../database");
const { render } = require('ejs');

// GET users listing. 
router.get('/', async (req, res) => {
  try {
    const conn = await getConnection();

    const email = req.session.user.email;
    
    const result = await conn.client.execute(`SELECT email, isbn, darabszam, hova, id FROM tetel`);
    console.log(result);
    res.render('kosar', { data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
});

router.post('/delete_from_cart', async (req, res) => {
  const quantity = 1;
  const email = req.session.user.email;
  const id = req.body.id;

  console.log(`Received CIM: ${id}`);

  try {
    
    const conn = await getConnection();
    
    const result = await conn.client.execute(`DELETE FROM tetel WHERE id = ${id}`);
    await conn.client.execute(`COMMIT`);
    console.log(result);
    await connection.close();

    res.status(200).send("Delete operation done");
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error 1');
  }
});

module.exports = router;
