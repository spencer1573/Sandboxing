var express = require('express');

var app = express();

var bodyParser = require('body-parser');

var mongoose = require('mongoose');
/*
 * the mongodb at the beginning of local host
 * is enforcing a protocol
 */
mongoose.connect('mongodb://localhost/cats');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

var cats = require('./cats.js')(app);

/*
app.get('/', function (req, res) {
  //res.send('hello worlde');
  res.json({hello: 'world'});
});
*/

var server = app.listen(3000, function () {
  console.log('Server running at http://127.0.0.1:3000/');
});



















/* old node example
var http = require('http');

http.createServer(function(req, res) {
  res.writeHead(200, {
    'Content-Type': 'text/plain'
  });
  res.end('Hello Worlde\n');
  //this is really nice for troubleshooting
  //because it puts out an output anywhere during the code
  //process.stdout.write("hwo: ");
}).listen(3000, '127.0.0.1');

console.log('Server running at http://127.0.0.1:3000/');
*/
