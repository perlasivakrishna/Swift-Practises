import UIKit

// creating classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// creating instance

let poppy = Dog(name: "Poppy", breed: "Poodle")

// inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "podole")
    }
}

//overriding

class Dog2 {
    func makeNoise() {
        print("woof!")
    }
}

class Poodle1: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle1()
poppy2.makeNoise()

// Final classes
// when the class is final no other class can inheti from that

final class Dog3 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//class poodle3: Dog3 {
//
//}  // Not allowed


// copying objects

class Singer {
    var name = "Taylor swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "siva"

print(singer.name)  // if it's a structure it prints the siva

// deinitializers

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//Mutability

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name) // even though declared as let you can change.

