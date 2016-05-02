var person = {
    firstname: 'John',
    lastname: 'Doe',
    greet: function() {
        console.log('hello, ' + this.firstname + ' ' + this.lastname);
    }
};

// this is how you call that greet function in that name value pair
// or object or whatever that is.
person.greet();
