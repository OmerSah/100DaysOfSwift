import UIKit

var greeting = "Hello, playground"

// Explicit type annotation of an array
var arr: [Int] = []
// Array literal
var arrayLiteral = [1,2,3,5]
// To initialize an empty array
var empty = [Int]()

// Add new elements to an array
arr.append(1)
arr.append(2)
arr.append(3)

print(arr)
print(arrayLiteral)
print(empty)

// Clear the arr array
arr = []
print(arr)

// Different type of Set definitons
var literalSet: Set = [1,2,5,6]
var emptySet = Set<Int>()
var initSet = Set(["Blue","Red","Purple"])
initSet.insert("Green")

print(literalSet)
print(emptySet)
print(initSet)

// Checks the given element
initSet.contains("Blue")

// Clear the initSet
initSet = []

// Swift Tuples
var name = (first: "Taylor", last: "Swift")
print(name.first) // Taylor
print(name.0) // Taylor

// Dictionaries
var literalDict: [String: Int] = [:]
var emptyDict = [String: Int]()
var initDict = ["Red":2,"Blue":3]

print(initDict["Red"]) // 2
// Insert a dictionary element
emptyDict["Blue"] = 8
print(emptyDict["Blue"]) // 8

// Clear the emptyDict
emptyDict = [:]

// Purple does not exist
emptyDict["Purple"] // nil

// Default values for dictionaries
// It is 0 because "Purple" does not exist
emptyDict["Purple", default: 0]

// Enums
enum Result {
    case success
    case failure
}

let result1 = Result.success // success

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

// Enum associated values
// talking(topic: "football")
let talking = Activity.talking(topic: "football")

// Enum raw values
/* Swift will automatically assign each of those a number starting from 0 */
enum Planet: Int {
    case mercury // 0
    case venus // 1
    case earth // 2
    case mars // 3
}
let earth = Planet(rawValue: 2) // earth

// Swift will assign 1 to mercury and count upwards from there
enum Planets: Int {
    case mercury = 1
    case venus // 2
    case earth // 3
    case mars // 4
}

