var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

// express imports 

var flash = require('express-flash');
var session = require('express-session');
var bodyParser = require('body-parser');

// Add oracle database import
var oracledb = require('oracledb');
var connection = require('./database');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({ 
  secret: '123456cat',
  resave: false,
  saveUninitialized: true
}))

app.use(flash());

app.use(function(req, res, next) {
  res.locals.user = req.session.user;
  next();
});

const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');
const booksRouter = require('./routes/konyvek');

const adminRouter = require('./routes/admin');
const cartRouter = require('./routes/kosar');
const loginRouter = require('./routes/login');
const registerRouter = require('./routes/register');

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/konyvek', booksRouter);

app.use('/admin', adminRouter);
app.use('/kosar', cartRouter);
app.use('/login', loginRouter);
app.use('/register', registerRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
