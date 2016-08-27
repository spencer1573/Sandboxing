/*
Check to see if the number passed into your function is prime or not.  77 is not prime and 13 is prime.

 checkIfPrime(77);  <-make sure to pass the Number into your function, so the code is DRY (reusable).

  Submit your .js/ts file on completion.
*/


function checkifPrime(number) {

  if (number > 1) { 

    var isPrime = true;
    for (var i = number - 1; i > 1; i--) {
      //console.log(i + " _ " + number + ": " + number % i);

      if ((number % i) === 0) {
        isPrime = false;
      }

    }
     
    var isOrIsNot = "";

    if (isPrime) {
      //do nothing
    } else {
      isOrIsNot = "not ";
    }
    var answer = number + " is " + isOrIsNot + "prime"; 

    console.log(answer);

    return answer;
  } 
}

checkifPrime(2);
checkifPrime(6);
checkifPrime(77);
checkifPrime(17);
