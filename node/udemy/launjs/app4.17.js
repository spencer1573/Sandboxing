// this is a simple function
function greet() {
    console.log('hi');
}
//simple call or invocation of function
greet();

// functions are first-class
// i'm not sure what first class means but
// this part totally exploded my head
//
function logGreeting(fn) {
    fn();
}
// passing in the greet function! 
// and then invoking that function
// this makes so much more sense about so many things!
// i'm so glad i bought this udemy course
logGreeting(greet);

// you can set a function as the value of a variable in a 
// 'function expression' note here that the function has no name
// its passed as 'greetMe' and evaluated when 'greetMe()' is called
//
// function expression
var greetMe = function() {
    console.log('hi tony')
}

greetMe();

// it's first-class
logGreeting(greetMe);

//this is also something huge! all of these are amazing and 
//i wish i had learned them before because they make everything make
//sense ... structurally
//
// use a function epxression 'on the fly'
logGreeting(function() {
    console.log('Hello Tony!');
});




