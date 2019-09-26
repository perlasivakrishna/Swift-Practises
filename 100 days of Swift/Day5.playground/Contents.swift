import UIKit

//functions

func printHelp() {
    let message = """
welcome to my app help section.....
"""
    print(message)
}
printHelp()

//Accepting parameters

func square(number: Int){
    print(number * number)
}

square(number: 16)

// Returning values
func squarer(number: Int) -> Int {
    return number * number
}

let result = squarer(number: 18)
print(result)

// parameter labels

func sayHello(to name:String) { // to external and name is internal
    print("hello \(name)")
}

sayHello(to: "Anand")

// omitting paramenets

func greet(_ person: String) {
    print("hello \(person)")
}

greet("Taylor")

//default parameters

func greet(_ person:String, nicely:Bool =  true) {
    if nicely {
        print("hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("paul", nicely: false)

// variadic functions // accpet any number of paramertes same type

print("haters", "gonna", "hate") // print is a variadic function

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5, 6)

//Throwing function

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// runnning throwing function

do {
    try checkPassword("password")
    print("Password is goog")
} catch let error {
    print("You can't use that password \(error)")
}

// inout parameters

// all the function parameters are constant by default, if you need to chnage use inout

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNumber = 10
doubleInPlace(number: &myNumber)
print(myNumber)
