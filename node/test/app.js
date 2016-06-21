var express = require('express');
var http = require('http');
var path = require('path');

var app = express();

// use app.router before express.static
//depreciated in express 4.0
//app.use(app.router);
app.use(express.router);
app.use(express.static(path.join(__dirname, 'public')));

function userIsAllowed(callback) {
  // this function would contain your logic, presumably asynchronous,
  // about whether or not the user is allowed to see files in the
  // protected directory; here, we'll use a default value of "false"
  callback(false);
}

app.get('/', function(req, res, next) {
  res.end('Home page');
});

app.get('/protected/*', function(req, res, next) {
  userIsAllowed(function(allowed) {
    if (allowed) {
      next(); // call the next handler, which in this case is express.static
    } else {
      res.end('You are not allowed!');
    }
  });
});

http.createServer(app).listen(3000, function(){
  console.log('Express server listening on port 3000');
});


