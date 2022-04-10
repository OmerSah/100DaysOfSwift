import UIKit

// Protocols and protocol inheritance
protocol Product {
    var id: Int {get set}
    var price: Double {get set}
}

protocol Food: Product {
    var calories: Int {get set}
}

protocol Fruit: Food {
    var growingSeason: String {get set}
    mutating func printSeason()
}
// Struct conforms all Product, Food and Fruit protocols
struct Apple: Fruit {
    var growingSeason: String
    var calories: Int
    var id: Int
    var price: Double
    func getInfo() -> String {
        var result = ""
        result += "Id: " + String(id) + "\n"
        result += "Price: " + String(price) + "\n"
        return result
    }
}
let apple = Apple(growingSeason: "All", calories: 200, id: 2, price: 2.5)
print(apple.getInfo())

// Regular extensions
// Extension for a specific type like Int
// Add more functionality
extension Int {
    func cube() -> Int {
        return self * self * self
    }
}
// Extension for protocol conformance
// Default implementation for Fruit protocol
extension Apple {
    mutating func printSeason() {
        self.growingSeason = "season"
        print("The season is \(self.growingSeason)")
    }
}
// Protocol extension
extension Collection {
    func printAllElements() {
        print("There are \(self.count) elements.")
        for element in self {
            // Print with space
            print(element, terminator: " ")
        }
        print("\n")
    }
}
// It affects all types that conform Collection protocol
let set = Set(["One","Two","Three"])
let arr = [5,2,2,4,9]
let str = "aString" // String conforms Collection protocol
str.printAllElements() // There are 7 elements. ...
arr.printAllElements() // There are 5 elements. ...
set.printAllElements() // There are 3 elements. ...

