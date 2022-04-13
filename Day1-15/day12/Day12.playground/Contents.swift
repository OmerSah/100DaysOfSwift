import UIKit

// Optionals and unwrapping optionals
var opt: String? = nil
// Unwrapping with if let syntax
if let str = opt {
    print("There are \(str.count) letters.")
} else {
    print("Found no value.")
} // Found no value

// A function that returns an optional value Array<T>.firstIndex(of:)
var strArr = ["One","Two"]
if let position = strArr.firstIndex(of: "One") {
    print("Index of One is \(position)")
} else {
    print("One is not found.")
}

// Unwrapping with guard let
func whoIsGoing(who name: String?) -> String? {
    guard let person = name else {
        print("Nobody is going.")
        return nil
    }
    // person remains usable after guard let
    return "\(person) is going"
}
print(whoIsGoing(who: "Omer")!) // Omer is going

// Force unwrapping
let a: Int = Int("5")! // If string is not valid, program crashes
print(a)

// Implicitly unwrapped optionals
var implicitlyOpt: Int! = nil
// It can be nil but do not behave like regular optionals
// No need to unwrap implicitly unwrapped optionals
if implicitlyOpt == nil {
    print("It is empty.")
} // It is empty.

// Nil coalescing
// It provides a default value to optional values
var who: String = whoIsGoing(who: nil) ?? "Omer"
print(who) // Omer

// Optional chaining
/* a.b?.c if b is nil the rest of the line is ignored
   and returns nil */
var temp = whoIsGoing(who: "Omer")?.first?.lowercased()
print(temp!) // o

// A function that throws error
enum DivisonError : Error {
    case dividedByZero
}

func divide(_ first: Double, _ second: Double) throws -> Double {
    if second == 0 {
        throw DivisonError.dividedByZero
    }
    return first / second
}

// Optional try
if let result = try? divide(5,0) {
    print("The result is \(result)")
} else {
    print("There is an error.")
} // There is an error
// Force unwrapping with optional try
print(try! divide(1, 2)) // 0.5

// Failable initializers
class Person {
    var name: String
    var password: String
    init?(name: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard name.count != 0 else {return nil}

        self.name = name
        self.password = password
    }
    init() {
        name = "Any"
        password = "Any"
    }
}

if let person = Person(name: "", password: "123") {
    print("Welcome \(person.name)!")
} else {
    print("Invalid person.")
} // Invalid person.

let person = Person(name: "Omer", password: "123456789")!
print(person.name) // Omer

// Typecasting
class Employee: Person {
    func getHired() {
        print("Get hired.")
    }
}
class Employer: Person {
    func hire() {
        print("Hired.")
    }
}

let people = [Employee(), Employer(), Employee()]

for person in people {
    if let employee =  person as? Employee {
        employee.getHired()
    } else if let employer = person as? Employer {
        employer.hire()
    }
}
// Get hired.
// Hired.
// Get hired.

