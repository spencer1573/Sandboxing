// function constructor
function Person(firstname, lastname) {

    this.firstname = firstname;
    this.lastname = lastname;

}

//prototype!
Person.prototype.greet = function() {
    console.log("first name: " + this.firstname + " last name: " + this.lastname);
}

var john = new Person('John', 'Doe');

console.log(john.firstname);

john.greet();
