import UIKit

var greeting = "Hello, playground"

/* Swift is a type-safe language. Every variable has
a specific type. For instance, greeting is a String  */

// We can use underscore(_) to read easily large numbers
var large = 12_000_000

// Triple quotes is used for multi-line strings
var multiLine = """
This is a
multiline
String.
"""

// With backslash(\), line breaks does not exist
var multiWithoutLineBreaks = """
This is a \
multiline string \
without line breaks
"""

print(multiLine)
print(multiWithoutLineBreaks)

// We can not add them integer and double it is not safe
var intVal = 1
var doubleVal = 1.0
// var sum: Double = intVal + doubleVal (It is not allowed)

/* We can place any variable into a string with \(variable)
that is called "String Interpolation" */
var age = 23
var yourAge = "My age is \(age)"
var quote = "He said that: \(yourAge)"

// let keyword creates constants that can never change
let constant = "Red Car"
// constant = "Blue Car" is not allowed

// We can use explicit type annotate
let str: String = "aaa"
let int: Int = 5
let boolean: Bool = true
let double: Double = 3.14
