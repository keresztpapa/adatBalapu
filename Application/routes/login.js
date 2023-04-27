var express = require('express');
var router = express.Router();
var bcrypt = require('bcrypt');

const { getConnection } = require("../database");
const { render } = require('ejs');


/* GET users listing. */
router.get('/', function (req, res, next) {
    res.render("login");
});

router.post('/', async function (req, res, next) {
    console.log("Login attempt by:")
    console.log(req.body.email)

    res.locals.errors = [];
    try {
        // Get a connection to the Oracle database
        const connection = await getConnection();

        // Execute the SQL query to fetch the data
        let result = await connection.client.execute(`SELECT * FROM felhasznalo WHERE email LIKE '${req.body.email}'`);

        // Release the connection back to the pool
        await connection.close();

        if (result.rows.length === 0) {
            res.locals.errors.push("Nincs ilyen felhasználó.")
            res.render("login")
            return;
        }
        // console.log("result = ")
        // console.log(result)

        r = await bcrypt.compare(req.body.password, result.rows[0][2])
        if (r){
            req.session.user = {
                'email': result.rows[0][0],
                'nev': result.rows[0][1],
                // 'jelszo': result.rows[0][2],
                'cim': result.rows[0][3],
                'telefon': result.rows[0][4],
                'isAdmin': result.rows[0][5] === 'admin',
            }
            const connection = await getConnection();
            let favorites = await connection.client.execute(
                `SELECT isbn FROM felhasznalo INNER JOIN kedvence
                ON felhasznalo.email = kedvence.email
                WHERE kedvence.email LIKE '${req.body.email}'`);
            await connection.close();
            console.log(req.body.email + " kedvencei: ")
            req.session.user.favorites = [];
            favorites.rows.forEach(row => {
                req.session.user.favorites.push(row[0])
            });
            console.log(req.session.user.favorites);

            res.locals.user = req.session.user;
            res.redirect('/')
            return
        } else {
            res.locals.errors.push("Helytelen jelszó.")
            res.render("login")
            return;
        }

    } catch (err) {
        console.error(err);
        res.status(500).send("Internal Server Error");
    }

    res.redirect("/");
});

module.exports = router;
