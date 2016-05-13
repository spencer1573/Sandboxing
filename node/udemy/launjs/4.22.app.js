// notice that this function
// has no NAME
// this is an immediately invoked function
// you just add parethesis on the end like
// you do when you normally call a function
var firstname = 'Jane'; 

(function () {
    // in this case the firstname is accessing
    // the global varaiable. you need to 
    // put a var in front of it to declare it
    // for this function's scope
    firstname = 'John'; 
    console.log(firstname);

}()); 

console.log(firstname);


