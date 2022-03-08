import UIKit

var greeting = "Hello, playground"

let result = 10 / 2.0 // Gives a double value

// We can add strings or arrays with operator overloading
let str1 = "One"
let str2 = "Two"
let resultStr = str1 + str2 + "Three"

let arr1 = [2,3,5]
let arr2 = [7,11,13]
let primeNumbers = arr1 + arr2

// Compund operators
var val = 13
val += 1

var quote = "Lorem"
quote += " ipsum"

// Comparison Operators
let lessThan = 5 < 6 // true
let greaterThan = 8 > 9 // false
let equal = 6 == 6 // true

// Strings can be compared by alphabetical order
let alphOrder = "T" > "O" // true

// Conditions
let a = 5
let b = 6

if a == b {
    print("A is equal to B")
} else if a > b {
    print("A is greater than B.")
} else if a < b {
    print("A is smaller than B.")
} else {
    print("Other cases!")
}

// Combining conditions with && ||
if a < 6 && b > 4 {
    print("Success")
} else if a > 4 || b < 6 {
    print("Success")
} else {
    print("Failure")
}

// Ternary operator
let ternaryStr = a == b ? "true" : "false"

// Switch statements
let colorChoice = "Red"

// We use fallthrough to continue
switch colorChoice {
case "Red":
    print("RED Shoes")
case "Blue":
    print("BLUE Shoes")
    fallthrough // Continue
default:
    print("Shoes")
}
    
