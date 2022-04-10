import UIKit

// Swift Classes
class Cat {
    var name: String
    var breed: String
    var voice: String
    var age: Int
    /* We have to provide an initializer on our own
     because Swift does not a provide a memberwise init. */
    init(name: String, age: Int, breed: String) {
        self.name = name
        self.age = age
        self.breed = breed
        self.voice = "Meow"
    }
    func makeVoice() {
        print(voice)
    }
}
// Mutability of classes
let cat = Cat(name: "Cotton", age: 2, breed: "Unknown")
// We can change variable properties of constant classes
cat.name = "Cutie"

// Class inheritance and method overriding
class BritishShortHair: Cat {
    init(name: String, age: Int) {
        super.init(name: name, age: age, breed: "British Shorthair")
    }
    override func makeVoice() {
        print(voice + " Grrrr!")
    }
}

// Final Classes
// final classes can not be inherited from other classes
final class PersianCat: Cat {
    init(name: String, age: Int) {
        super.init(name: name, age: age, breed: "Persian")
    }
}

// Copying classes
var cat1 = BritishShortHair(name: "Kitty", age: 1)
var cat2 = cat1
cat2.name = "Unknown" // It also affects cat1
print(cat1.name) // Unknown

// Deinitializer
class Savannah: Cat {
    init() {
        super.init(name: "Kitty", age: 3, breed: "Savannah")
        print("\(name) is created.")
    }
    // It wil be called when instant is being destroyed
    deinit {
        print("\(name) is not alive.")
    }
}
// x3
// Kitty is created.
// Meow
// Kitty is not alive.
for _ in 1...3 {
    let cat = Savannah()
    cat.makeVoice()
}
