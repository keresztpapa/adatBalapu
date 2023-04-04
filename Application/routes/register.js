var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.render("register");
});

/* POST */
router.post('/', (req, res) => {
    // console.log(req);
    console.log(req.body);

    res.locals.errors = [];

    if(req.body.password !== req.body.password_again)
        res.locals.errors.push("A jelszavak nem egyeznek meg");
    if(!req.body.email.match(/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g))
        res.locals.errors.push("Helytelen e-mail cím");
    if(!req.body.telephone.match(/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/g))
        res.locals.errors.push("Helytelen telfonszám");

    res.render('register');
});

module.exports = router;