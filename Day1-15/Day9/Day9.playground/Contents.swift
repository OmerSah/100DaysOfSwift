import UIKit

// Structs with custom initializer
struct Person {
    var name: String
    var surname = "No Surname"
    init() {
        name = "Anonymous"
        print("A user is registered.")
    }
    // Self keyword refers the current instance
    init(name: String, surname: String) {
        // Self indicates whether it is a property or not
        self.name = name
        self.surname = surname
        print("A user is registered with name and surname.")
    }
    func getNameSurname() -> String {
        return name + surname
    }
    mutating func changeName(_ Name: String) {
        name = Name
    }
}
// Memberwise initializer: default initalizer with all properties
// After custom initializer, Swift removes memberwise initializer
let person = Person() // A user is registered
// A user is registered with name and surname.
let personWithName = Person(name: "Omer", surname: "Sahin")
print(person.name) // Anonymous
print(personWithName.name) // Omer

// Lazy properties, property observers and static keyword
struct Employee {
    var name: String {
        // Prints every time name changes
        didSet {
            print("It is now \(name)")
        }
        // Prints before name changed
        willSet(oldName) {
            print("From \(oldName) to \(name)")
        }
    }
    /* numberOfEmployees belongs to struct itself not individual instances */
    static var numberOfEmployees = 0
    var experience: Int
    // Swift creates this property after the first access to it
    lazy var lastCompany = "None"
}
// Provides a new initializer with keeping memberwise initializer
extension Employee {
    init() {
        name = "Anonymous"
        experience = 0
        // Increase the static property for all instances
        Employee.numberOfEmployees += 1
    }
}
// lastCompany is not created
var employee = Employee()
// lastCompany is created after first access
employee.lastCompany = "Apple"
// From Faruk to Anonymous
// It is now Faruk
employee.name = "Faruk"
print(Employee.numberOfEmployees) // 1

