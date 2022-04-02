import UIKit

// Creating structs
struct Person {
    // Property
    var name: String
    // Property initialized with a default value
    var surname = "No Surname"
}
let person = Person(name: "Omer", surname: "Sahin")
print(person.name)
print(person.surname)

// Computed properties
struct Student {
    var GPA: Double
    // Property depends on GPA property
    var canGraduate: Bool {
        if GPA > 2.0 {
            return true
        } else {
            return false
        }
    }
}
let student = Student(GPA: 3.5)
print(student.canGraduate)

// Methods
struct Staff {
    var experience: Int
    func calculateSalary(for all: String) -> Int {
        return experience * 1000
    }
}

let staff = Staff(experience: 10)
print(staff.calculateSalary(for: "klclkhfsl")) // 10_000

// Mutating methods
struct Store {
    var isOpened: Bool
    mutating func openStore() {
        isOpened = true
    }
}
// We can not use mutating methods on immutable value (let store)
var store = Store(isOpened: false)
store.openStore()

// Properties and methods of strings
var sentence = "To be, or not to be, that is the question."
// Sort the letters into an array
let arrayOfLetters = sentence.sorted()
print(arrayOfLetters)
// If it starts with specific letters returns true
print(sentence.hasPrefix("To")) // true
// Counts the letters
print(sentence.count) // 42
// Uppercase string
print(sentence.uppercased())

// Properties and methods of arrays
var colors = ["Red", "Blue", "Green"]
// Add new item at the end
colors.append("Black") // Red Blue Green Black
// Sort the array
colors.sorted()
// Find the first index of given item
colors.firstIndex(of: "Red") // 0
// Remove item at given index
colors.remove(at: 0) // Blue Green Black

