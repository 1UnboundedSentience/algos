// Please implement a function that checks whether a positive number is a palindrome or not. For example, 121 is a palindrome, but 123 is not.

function isPalindrome(n) {
  for (var i=0; i<n.length/2; i++) {
    console.log(n[i]);
    console.log(n[n.length-1-i]);
    if (n[i] !== n[n.length-1-i]) {
      return false;
    }
  }
  return true;
}

console.log(isPalindrome("123"));
console.log(isPalindrome("121"));