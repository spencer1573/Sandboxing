// function constructor
function Person(firstname, lastname) {

    this.firstname = firstname;
    this.lastname = lastname;

}

//prototype!
/*
Person.prototype.greet = function() {
    console.log("first name: " + this.firstname + " last name: " + this.lastname);
}
*/

Person.prototype.number = 3;
Person.prototype.string = "the string";

var john = new Person('John', 'Doe');

console.log(john.firstname);

//john.greet();

// never use this in production, but what it does 
// it lists ALL the prototypes and what they are
// if its a function it doesn't write it all out 
// it just says function. for number it says
//
// number: 3
//
// string: 'the string'
console.log(john.__proto__);
