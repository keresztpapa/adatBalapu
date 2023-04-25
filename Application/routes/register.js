var express = require('express');
var router = express.Router();
var bcrypt = require('bcrypt');

const { getConnection } = require("../database");
const { render } = require('ejs');

/* GET users listing. */
router.get('/', function (req, res, next) {
    res.render("register");
});

/* POST */
router.post('/', async (req, res) => {
    // console.log(req);
    console.log(req.body);

    res.locals.errors = [];

    if (req.body.password !== req.body.password_again)
        res.locals.errors.push("A jelszavak nem egyeznek meg");
    if (!req.body.email.match(/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g))
        res.locals.errors.push("Helytelen e-mail cím");
    if (!req.body.telephone.match(/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/g))
        res.locals.errors.push("Helytelen telfonszám");

    try {
        hashed_pw = await bcrypt.hash(req.body.password, 10);
    
        // Get a connection to the Oracle database
        const connection = await getConnection();

        const email_exists = await connection.client.execute(
        `SELECT COUNT(*) FROM felhasznalo WHERE email LIKE '${req.body.email}'`
        );
        console.log(email_exists.rows[0][0]);
        if (email_exists.rows[0][0] !== 0){
            res.locals.errors.push("Már létezik felhasználó ilyen e-mail címmel.");
        }
        if (res.locals.errors.length !== 0){
            res.render('register');
            return;
        }

        // Execute the SQL query to fetch the data
        await connection.client.execute(
        `INSERT INTO felhasznalo (email, nev, jelszo, cim, telefon, szerep) 
        VALUES ('${req.body.email}', '${req.body.username}', '${hashed_pw}','${req.body.address}', '${req.body.telephone}', 'user')`
        );
        await connection.client.execute(`COMMIT`);
        console.log(`
        INSERT INTO felhasznalo (email, nev, jelszo, cim, telefon, szerep)
        VALUES ('${req.body.email}', '${req.body.username}', '${hashed_pw}',
             '${req.body.address}', '${req.body.telephone}', 'user') 
        `);
        // Release the connection back to the pool
        await connection.close();

        // Render the data on an HTML page using a view template
    } catch (err) {
        console.error(err);
        res.status(500).send("Internal Server Error");
    }

    res.render('index');
    return;
});

module.exports = router;