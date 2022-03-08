import UIKit

var greeting = "Hello, playground"

// For loop
let range = 1...5

// Loop over range
for i in range {
    print("Your item is: \(i)")
}

let words = ["One", "Two", "Three"]

// Loop over array
for word in words {
    print(word)
}

// Loops with underscore
for _ in range {
    print("Underscore")
}

// While loop
var val = 1

while val < 5 {
    print("Value is \(val)")
    val += 1
}

// repeat loop
let nums = [1,5]
var randArr: [Int]

// Shuffle until it finds the same array
repeat {
    randArr = nums.shuffled()
} while randArr != nums


// Exit loops
var cnt = 0
let arr = [1,5,6,7,0]

while arr[cnt] != 0 {
    // break while loop
    if arr[cnt] == 5 {
        break
    }
    cnt += 1
}

// Exiting multiple loops

// With break our we can break both of two loops
out: for i in 1...10 {
    for j in 1...10 {
        print(i + j)
        
        if i + j == 5 {
            break out
        }
    }
}
        
// Skipping values with continue
// Skip numbers that are odd
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print("Even number: \(i)")
}

// Infinite Loops
cnt = 0
while true {
    if cnt == 5 {
        break
    }
    cnt += 1
}
