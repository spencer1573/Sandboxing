var r = require('request').defaults({
    json: true
});

var async = require('async');
var redis = require('redis');
//* obviously you would use env_variables instead of the 
//actual port and everything because its dangerous to 
//put your information like that in the app
var client = redis.createClient(6379, '127.0.0.1');

module.exports = function(app) { 

    /* Read */
    app.get('/pets', function (req, res) {

        async.parallel({
            cat: function(callback){
                r({uri: 'http://localhost:3000/cat'}, function(error, response, body) {
                    if (error) {
                        callback({service: 'cat', error: error});
                        return;
                    };
                    if (!error && response.statusCode === 200) {
                        callback(null, body.data);
                    } else {
                        callback(response.statusCode);
                    }
                });
            },
            dog: function(callback){
                /*
                 * redis request
                 ********************************************************/
                client.get('http://localhost:3001/dog', function(error, cat) {
// follow along at 10:45
                /*
                r({uri: 'http://localhost:3001/dog'}, function(error, response, body) {
                    if (error) {
                        callback({service: 'dog', error: error});
                        return;
                    };
                    if (!error && response.statusCode === 200) {
                        callback(null, body.data);
                    } else {
                        callback(response.statusCode)
                    }
                });
                */
            }
        },
        function(error, results) {
            res.json({
                error: error,
                results: results
            });
            
        });
        
    });

    //#QUESTION: Date.getTime() or Date.getHours() is not working... why is this?
    app.get('/ping', function (req, res) {
        res.json({pong: Date.now()});
    });
    
};


