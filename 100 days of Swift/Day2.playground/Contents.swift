import UIKit

// Arrays
let siva = "Siva krishna"
let anand = "Anand"
let manoj = "manoj"
let kp = "Kp"
let employees = [siva, anand, manoj, kp]
employees[1]
//Sets
var colors = Set(["Green", "red", "Black", "red"])
colors.insert("Black")
// sets avoid duplicates, no order and ca,t access by index


//Tuples

let address = (door: "#572", area: "R.T.Nagar", city: "Bangalore")
address.0
address.area

//Dictionaries
let heights = ["Siva": 5.9,
               "Anand":5]
heights["Anand"]
heights["siva", default: 0.0]  // dictionaries with default values
// empty Collections

let arrayOfStrings = [String]()
var dictionary = [String: String]()
dictionary["siva"] = "5.9"

var sets = Set<String>()
//alternative way to emplty array and dic
var array = Array<String>()
var scoresDictionary = Dictionary<String, String>()
//Enums
enum Result {
    case success
    case failure
}

let result = Result.failure

// Enums with associated values
enum Activity {
    case bored
    case walking(destination: String)
    case singing
    case talking
}

let walingTo = Activity.walking(destination: "Mumbai")

// Enum raw values
enum Planet: Int {
    case mercury = 1
    case mars
    case earth
}

let mercury = Planet(rawValue: 1)
