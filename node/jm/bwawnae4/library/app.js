var express = require('express');

// this is an instance of express
var app = express();

var port = 5000;
// the function is a callback that executes after it listens on port 5000
app.listen(port, function(err){
    console.log('running server on port ' + port);
});

