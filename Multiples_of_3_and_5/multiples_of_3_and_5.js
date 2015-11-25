/////////// PROBLEM 1: MULTIPLES OF 3 AND 5
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

/////////// SOLUTION ///////////
var multiples_of_3_and_5 = function(number){
  var multiples = [];
  for (i = 1; i < number; i++){
    if (i % 3 == 0 || i % 5 == 0){
      multiples.push(i);
    };
  };
  var sum = multiples.reduce(function(a, b){
    return a + b
  });
  return sum;
};

/////////// DRIVER TESTS ///////////
console.log(multiples_of_3_and_5(1000) == 233168);
