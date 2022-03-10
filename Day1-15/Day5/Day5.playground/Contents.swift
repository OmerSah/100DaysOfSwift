import UIKit
import Foundation

// Functions
func greet() {
    print("Hello, Welcome to XCode!")
}
// Use case
greet()

// Functions with parameters
func printSum(arr: [Int]) {
    var sum = 0
    for num in arr {
        sum += num
    }
    print(sum)
}
// Use case of printSum above
let arr = [1,4,5,6,6]
printSum(arr: arr)

// Taking multiple values with tuples
func addUser(name: (first:String,second:String)) {
    print("\(name.first), \(name.second) is added.")
}
let username = ("Omer","Sahin")
addUser(name: username)

// Taking multiple values with dictionaries
// It is not as efficient as tuples
// It always gives optional values
// Typos can give wrong result
func addUserDict(name: [String:String]) {
    print("\(name["First"]!), \(name["Second"]!) is added.")
}
let usernameDict = ["First":"Omer","Second":"Faruk"]
addUserDict(name: usernameDict)

// Returning multiple values
func getUser() -> (first: String, second: String) {
    return ("Omer","Sahin")
}
let name = getUser()
print(name.first,name.second)

// Parameter labels
func sayHello(to name: String) {
    print("Hello \(name)")
}
sayHello(to: "Omer")

// Omitting parameter labels and default parameters
func sayHi(_ name: String, isGoing: Bool = false) {
    if isGoing {
        print("Bye \(name)")
    } else {
        print("Hi \(name)")
    }
    
}
sayHi("Omer")
sayHi("Omer", isGoing: true)

// Variadic Functions
func average(of numbers: Int...) -> Double {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return Double(sum / numbers.count)
}
print(average(of: 1, 3, 5, 7 ,9)) // 5.0

// Throwing functions
enum StringError: Error {
    case special_character
}

// Check whether name contains special char or not
func isNameValid(_ name: String) throws -> Bool {
    let character = CharacterSet(charactersIn: "(){}[]\\/+*$>.|^?")
    if name.rangeOfCharacter(from: character) != nil {
        throw StringError.special_character
    } else {
        return true
    }
}

// Use case 1 - Wrong input
do {
    let nameChecked = "Omer."
    try isNameValid(nameChecked)
    print("It is good to go \(nameChecked).")
} catch {
    print("You can not use this name. This is not valid.")
}
// Use case 2 - Correct input
do {
    let nameChecked = "Omer"
    try isNameValid(nameChecked)
    print("It is good to go \(nameChecked).")
} catch {
    print("You can not use this name. This is not valid.")
}

// Inout parameters
// Takes the reference of a variable
func squareInPlace(of number: inout Int) {
    number *= number
}
// Changes num variable directly
var num = 10
squareInPlace(of: &num)
print(num) // 100
