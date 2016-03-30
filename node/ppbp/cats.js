var _ = require('lodash');

module.exports = function(app) {

    /*
     * you can use curl requests to send json! wow!
     * but postman seems easy enough and it checkes for your mistakes and everything
    */

    /************
    this is a cats array
    #QUESTION:
    why is there a underscore next to cats, is that lodash?
    ************/
    _cats = [];

    /* Create */
    app.post('/cat', function (req, res) {
        _cats.push(req.body);
        res.json({info: 'cat created successfully'});
    });

    /* Read */ 
    app.get('/cat', function (req, res) {
        res.send(_cats);
    });

    /* colon with :id is parameter */
    app.get('/cat/:id', function (req, res) {
        res.send(
            _.find(
                _cats,
                {
                    name: req.params.id
                }
            )
        );
    });

    /* Update */
    app.put('/cat/:id', function (req, res) {
        var index = _.findIndex(
            _cats,
            {
                name: req.params.id
            }
        );
        _.merge(_cats[index], req.body);
        res.json({info: 'cat updated successfully'});
    });

    /* Delete */
    app.delete('/cat/:id', function (req, res) {
        _.remove(_cats, function(cat) {
            return cat.name === req.params.id;
        });
        res.json({info: 'cat removed successfully'});
    });
};

