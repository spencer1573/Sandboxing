var mongoose = require('mongoose');

var catSchema = mongoose.Schema({

    name: String,
    age: Number,
    type: String,

});

/* 
 * so the name of this model is called cat, and its sending
 * the catSchema var
 */
module.exports = mongoose.model('Cat', catSchema);
