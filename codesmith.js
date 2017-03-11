// Declare a local variable firstName and assign it to a string which is your first name.
// Declare a local variable lastName and assign it to a string which is your last name.
// Use string concatenation to to make a local variable fullName equal to your first and last names separated by a space.
// Make an age local variable equal to an integer which is your age.
// Make a local variable github equal to your GitHub username.
// Make a local variable email equal to your email.
// Make a local variable phone equal to your phone number.
// Declare a local variable contactInfo which is an array containing your github, email, and phone variables.
// Define a function createApp which takes your fullName, age, and contactInfo as arguments in that order. This should return an object containing each of these values. Make their property names the same as their variable names.
// Define a function once which takes in a function as an argument. once should return a function that can only be invoked one time. Repeat calls to the function return the value of the first call.
// var increment = function(num) { return num + 1; };
// var incrementOnce = once(increment);
// incrementOnce(5); -> 6
// incrementOnce(10); -> 6

var firstName = "Jason";
var lastName= "Xu"
var fullName = firstName + lastName;
var age = 25;
var github = "1UnboundedSentience";
var email = "jsnx21@gmail.com";
var phone = "408-642-8138";
var contactInfo = [github, email, phone];
function createApp(fullName, age, contactInfo) {
  return {
    fullName: fullName,
    age: age,
    contactInfo: contactInfo
  }
}