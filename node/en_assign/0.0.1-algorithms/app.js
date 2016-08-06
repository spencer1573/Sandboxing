/*

Rmove any duplicates in an array.  [1,3,3,3,1,5,6,7,8,1] -> [1,3,5,6,7,8].  

Write a JavaScript or TypeScript program that loops over [1,3,3,3,1,5,6,7,8,1] and removes any duplicates.

removeDups([1,3,3,3,1,5,6,7,8,1]);  <-make sure to pass the array into function, so the code is DRY (reusable).

 

 Submit your .js/ts file on completion.

*/

function removeDups(dup_array) {

  //puts the array so the result will
  //automatically be in order
  dup_array = dup_array.sort();
  
    
  var result_array = [];

  for(var i = 0; i < dup_array.length; i++) {

    //console.log(dup_array[i]);

    if (result_array.includes(dup_array[i])) {
      //do nothing 
    } else {
      result_array.push(dup_array[i]);      
    }
      
  }
  
  console.log(result_array);

  return result_array;

}

removeDups([1,3,3,3,1,5,6,7,8,1]);





