var express = require('express');

// this is an instance of express
var app = express();

// he said something about app.use
// it loads all the directories and everything in that directory you specify
// there is great documentation here and some really good examples:
// http://expressjs.com/en/api.html
app.use(express.static('public'));

app.use(express.static('src/views'));

app.get('/', function(req, res){
    res.send('hello world');
});

app.get('/books', function(req, res) {
    res.send('books!');
});

var port = 5000;
// the function is a callback that executes after it listens on port 5000
app.listen(port, function(err){
    console.log('running server on port ' + port);
});

