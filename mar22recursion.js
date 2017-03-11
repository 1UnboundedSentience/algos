// Target Practice - RECURSION

// 1. What are the three recursive architectual patterns covered in class?
// recursion with side effects
// helper method recursion
// pure recursion


// 1.a List the step by step for Helper Method Recursion?

// 1. instantiate scope variables
// 2. return a value
// 3. create the helper method, invoke helper method
// at outer function to keep track of parent state, child method to run recursion
// 4. invoke helper method at the bottom




// 1.b Should the recursive case or base case typically be tackled first?

// recursive case, since it defines the logic for calls


// 2a. Print each item in an array in order using Helper Method of Recursion
// Input: Array
// Output: Undefined
function print(arr){
  var count = 0;
  runPrint(arr, count);
  function runPrint(values, count) {
    if (count >= values.length)  {
      return;
    }
    else {
      console.log(values[count]);
      runPrint(values, count+=1)
    }
  }
  return;
}
print([1,2,3]);
// Example: print([1,2,3]) =>
// 1
// 2
// 3

// 2b. Print each item in an array backwards using Helper Method of Recursion
// Input: Array
// Output: Undefined
function reversePrint(arr){
  var count = arr.length-1;
  runPrint(arr, count);
  function runPrint(arr, count) {
    if(count < 0) {return;}
    else {
      console.log(arr[count]);
      runPrint(arr, count-=1);
    }
  }
  return;
}
reversePrint([1,2,3])
// Example: reversePrint([1,2,3]) =>
// 3
// 2
// 1




// 2c. Reverse a string using Helper Method of Recursion
// Input: String with no spaces
// Output: String
function reverseString(str) {
  function runReverse(str) {
    if (str.length === 1) {return str;}
    else {
      return str.slice(-1) + runReverse(str.slice(0, str.length-1))
    }
  }
  return runReverse(str);
}
console.log(reverseString('hello'));
// Example: reverseString('hello') => 'olleh'




// 2d. Create tuples from an array using the Helper Method of Recursion
// Input: Array of integers
// Output: Array of tuples
function tuples(arr){
  var madeTuples = [];
  var count = 0;
  function makeTuples(count) {
    if (count>=arr.length) {return;}
    else {
      madeTuples.push([arr[count], arr[count+1]]);
      makeTuples(count+=2)
    }
  }
  makeTuples(0);
  return madeTuples;
}
console.log(tuples([1, 2, 3, 4, 5, 6]))
console.log(tuples([1, 2, 3, 4, 5]))

// Example: tuples([1, 2, 3, 4, 5, 6]) => [[1,2], [3,4], [5,6]]
// Example: tuples([1, 2, 3, 4, 5]) => [[1,2], [3,4], [5, undefined]]




// 2e. Flatten a nested array using the Helper Method of Recursion
// Input: Array of integers and arrays
// Output: Array of integers
// function flatten(arr){
//   var count = 0;
//   var flattened = [];
//     function flattenIt(array, count) {
//       if (arr[count+1] === undefined) {return;}
//       else if (!Array.isArray(arr[count]) {
//         flattened.push(arr[count]);
//         flattenIt(arr[count+1])
//       }
//       else {
//         flattenIt(arr[count], count+=1);
//       }
//     }
//   flattenIt(arr, count);
//   return flattened;
// }
// console.log(flatten([1, [2, 3, [4]], 5, [[6]]]));
// Example: flatten([1, [2, 3, [4]], 5, [[6]]]) => [1, 2, 3, 4, 5]




// 2f. Power using Helper Method of Recursion
// Input: Two Integers, Base and Exponent
// Output: Integer of result
function power(base, exponent){
  var total = base;
  function runpower(base, count) {
    if (count >= exponent) {return;}
    else {
      total *= base;
      runpower(base, count+=1)
    }
  }
  runpower(total, 1);
  return total;
}
console.log( power(3, 4));
// Example: power(3, 4) => 81




// 2g. Merge two sorted array using the Helper Method of Recursion
// Input: 2 Sorted Arrays
// Output: Sorted Array
function merge(array1, array2){
  var result = [];
  function doMerge(count1, count2) {
    if (array1[count1] === undefined) {
      result.concat(array2.slice(count2))
      return;
    }
    else if (array2[count2] === undefined) {
      result.concat(array1.slice(count1))
      return;

    }
    else {
      if(array1[count1] < array2[count2]) {
        result.push(array1[count1]);
        doMerge(count1+=1, count2);
      }
      else {
        result.push(array2[count2]);
        doMerge(count1, count2+=1);
      }
    }
  }
  doMerge(0,0);
  return result;
}
console.log(merge([1, 4, 7,5,6,7,7],[2, 3, 6]))
console.log(merge([2, 3, 6],[1, 4, 7,5,6,7,7]))

// Example: merge([1, 4, 7],[2, 3, 6, 9]) => [1, 2, 3, 4, 6, 7, 9]




// 3. What are side effects?

// optional arguments passed in


// 3a.-3g. Redo problems 2a.-2g. with Recursion using Side Effects




// 4. How is Pure Recursion different from Recursion w/ Side Effects?




// 4a.-4g. Redo problems 2a.-2g. with Using Pure Recursion
