/*
declare var require: any;
var ts = require('ts');
require('ntypescript');
console.log(ts.createScanner);
*/
var Car = (function () {
    function Car(engine) {
        this.engine = engine;
    }
    ///*
    Car.prototype.start = function () {
        alert('Engine started: ' + this.engine);
    };
    Car.prototype.stop = function () {
        alert('Engine stopped: ' + this.engine);
    };
    return Car;
}());
/*
var myCar = new Car("v8 supercharged");

myCar.start();

myCar.stop();
*/
///*
window.onload = function () {
    var myCar = new Car("v8 supercharged");
    myCar.start();
    myCar.stop();
};
//*/
