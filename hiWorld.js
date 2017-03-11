function subsets(array) {
  subarrays = [];
  for(var i = array.length; i > 0; i--) {
    new_array = array.pop
    subarrays.push(array);
  }
  return subarrays;
}

console.log( subsets([0,1,2,3,4]) )
