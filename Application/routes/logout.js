var express = require('express');
var router = express.Router();

const { render } = require('ejs');

// GET users listing. 
router.get('/', async (req, res) => {
    req.session.user = undefined;
    res.redirect("/");
});

module.exports = router;
