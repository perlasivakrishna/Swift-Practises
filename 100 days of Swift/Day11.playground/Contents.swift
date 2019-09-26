import UIKit

// protocols inheritance

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var  id: String
    
}

func displayId(thing: Identifiable) {
    print("My Id is \(thing.id)")
}

// protocol inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func stydu()
}

protocol HasVacation {
    func takevacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {
    
}

// extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

// can't add stored properties in extesnions but u can have computed property

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven


// Protocol extensions

let pythons = ["Eric", "Graham", "John"]
let beatles = Set(["john", "paul", "george"])

extension Collection {
    func summarize() {
        print("there are \(count) if us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// protocol oriented programming

protocol Identity {
    var id: String { get set}
    func identify()
}

extension Identity {
    func identify() {
        print("my id is \(id)")
    }
}

struct Student: Identity {
    var id: String
}

let student = Student(id: "siva")
student.identify()

