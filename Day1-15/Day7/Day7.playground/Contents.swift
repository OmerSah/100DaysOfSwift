import UIKit

var greeting = "Hello, playground"

// Closures with multiple parameters and returning values
func operateIntegers(first: Int, second: Int, then operation: (Int,Int) -> Int) {
    let res = operation(first,second)
    print("The result is \(res)")
}
// Trailing closure syntax
// Multiply integers with operateIntegers
operateIntegers(first: 5, second: 6) { (f: Int, s: Int) -> Int in
    return f * s
} // 30

// Shorthand parameters
// Swift knows the parameter so we can remove it (f: Int, s: Int) -> (f,s)
operateIntegers(first: 5, second: 6) { (f,s) -> Int in
    return f + s
} // 11
// It also knows the closure must return a string, so we can remove that
operateIntegers(first: 5, second: 6) { (f,s) in
    return f - s
} // -1
/* As the closure only has one line of code, Swift lets us remove the return keyword too */
operateIntegers(first: 5, second: 6) { (f,s) in
    f - s
} // -1
/*  We can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0. */
operateIntegers(first: 5, second: 6) {
    $0 * $1
} // 30

