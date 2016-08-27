var express = require('express');
var http = require('http');
var path = require('path');

function userIsAllowed(callback) {
  // this function would contain your logic, presumably asynchronous,
  // about whether or not the user is allowed to see files in the
  // protected directory; here, we'll use a default value of "false"
  callback(false);
}

// This function returns a middleware function
var protectPath = function(regex) {
  return function(req, res, next) {
    if (!regex.test(req.url)) { return next(); }

    userIsAllowed(function(allowed) {
      if (allowed) {
        next(); // send the request to the next handler, which is express.static
      } else {
        res.end('You are not allowed!');
      }
    });
  };
};

var app = express();

app.use(protectPath(/^\/protected\/.*$/));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', function(req, res, next) {
  res.end('Home page');
});

http.createServer(app).listen(3000, function(){
  console.log('Express server listening on port 3000');
});

