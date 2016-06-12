/*
declare var require: any;
var ts = require('ts');
require('ntypescript');
console.log(ts.createScanner);
*/

class Car {
    engine: string;
    constructor (engine: string) {
        this.engine = engine;
    }
    ///*
    start() {
        alert('Engine started: ' + this.engine);
    }

    stop() {
        alert('Engine stopped: ' + this.engine);
    }
    //*/
    /*
    start() {
        console.log('Engine started: ' + this.engine);
    }

    stop() {
        console.log('Engine stopped: ' + this.engine);
    }
    */
    
}
/*
var myCar = new Car("v8 supercharged");

myCar.start();

myCar.stop();
*/
///*
window.onload = function() {
    
    var myCar = new Car("v8 supercharged");

    myCar.start();

    myCar.stop();
}
//*/

