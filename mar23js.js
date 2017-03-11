function outer() {
  var counter = 0;
  function incrementCounter() {
    counter ++;
  }
  return incrementCounter;
}

var myNewFunction = outer();
console.log(myNewFunction());