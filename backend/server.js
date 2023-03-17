const port = 8080
const express = require('express');
const {resolve} = require('path');
const app = express();

var path = require('path');

app.use(express.static(path.join(__dirname, '../frontend')));
app.use(express.static(path.join(__dirname, '../frontend/html')));
app.use(express.static(path.join(__dirname, '../frontend/css')));

const index = resolve('../frontend/html/index.html');

app.get('/', (req, res) => res.sendFile(index));
app.get('/index', (req, res) => res.sendFile(index));

app.listen(port, () => console.log(`App listening at http://localhost:${port}`));