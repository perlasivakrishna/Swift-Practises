import UIKit

//creating Struct

struct Sport {
    var name: String
}

let tennis = Sport(name: "Tennis")
print(tennis.name)

// tennis.name = "" //can not assign as struct is immutable

// computed properties

struct Sport1 {
    var name: String
    var isOlympicGame: Bool
    var olympicStatus: String {
        if isOlympicGame {
           return "\(name) is an olympic sport"
        } else {
           return "\(name) is not an olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicGame: false)
print(chessBoxing.olympicStatus)

// property observers

struct Progress {
    var task: String
    var amount: Int {
        willSet {
            print("\(task) is about to \(amount)% completed")
        }
        
        didSet {
            print("\(task) is now \(amount)% completed")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 56
progress.amount = 100

// methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// mutating methods

struct Person {
    var name: String
    
   mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Paul")
person.makeAnonymous()

// properties and methods of strings

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// properties and methods of Arrays

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
toys.sorted()
toys.remove(at: 0)
print(toys)

