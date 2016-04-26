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
