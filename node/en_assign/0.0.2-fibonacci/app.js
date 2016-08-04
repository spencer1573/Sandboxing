function calcFib(iteration_limit) {
  
  var fib = [0, 1];

  var added_together = 0;
  
  for (var i = 2; i <= iteration_limit; i++) {
    added_together = fib[0] + fib[1];
    console.log(added_together);
    fib[0] = fib[1];
    fib[1] = added_together;
  }
  
  
  console.log("the 12th iteration is: " + fib[1]);
  
}

calcFib(12);
