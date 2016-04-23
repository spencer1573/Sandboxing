var express = require('express');

// this is an instance of express
var app = express();

app.get('/', function(req, res){
    res.send('hello world')
});

app.get('/books', function(req, res) {
    res.send('books!')
});

var port = 5000;
// the function is a callback that executes after it listens on port 5000
app.listen(port, function(err){
    console.log('running server on port ' + port);
});

