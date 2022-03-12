import UIKit

var greeting = "Hello, playground"

// Creating basic closures
// We can use both var or let
var greet = {
    print(greeting)
}
greet()

// Accepting parameters
let greetSomeone = { (name: String) in
    print("Hello \(name)")
}
greetSomeone("Omer")

// Returning Values
// Arrow and type before in keyword
let isOverweight = { (bmi: Double) -> String in
    switch bmi {
    case 0..<18.5:
        return "Underweight"
    case 18.5..<25:
        return "Normal"
    case 25...:
        return "Overweight"
    default:
        return "Wrong Input!"
    }
    
}
let amIOverwight = isOverweight(28.3)
print(amIOverwight)

// Closures as parameters
// If it does not return anything just specify this with Void
func codeSomething(startWith: () -> Void) {
    startWith()
    print("Code something...")
}
codeSomething(startWith: greet)

// Trailing closure syntax
codeSomething() {
    print("With trailing closure syntax")
} /*
 With trailing closure syntax
 Code something...
*/

// We does not have to use () because there is no other parameter
codeSomething {
    print("With trailing closure syntax")
} /*
 With trailing closure syntax
 Code something...
*/

// Without trailing closure syntax
codeSomething(startWith: {
    print("Without trailing closure syntax")
}) /*
  Without trailing closure syntax
  Code something...
*/

