// pass by value
function change(b) { 
    b = 2;
}

var a = 1;
change(a);
console.log(a);

//pass by reference 
// the reason that c changes after it
// is called by the changeObj
// is because c and d 
// ARE BOTH POINTING TO THE SAME
// OBJECT!!!
//
// this is super important for instance
// when we require something
// and need to change it everywhere
// it changes it everywhere even outside 
// of the function
function changeObj(d) {
    d.prop1 = function() {};
    d.prop2 = {};
}

var c = {};
c.prop1 = {};
console.log(c);
changeObj(c);
console.log(c);

