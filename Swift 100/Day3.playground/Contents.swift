import UIKit

//Arithmetic Operators

let firstScore = 12
let secondScore = 4

let addition = firstScore + secondScore

let substraction = firstScore - secondScore

let multiply = firstScore * secondScore

let division = firstScore / secondScore

let reminder = 15 % secondScore

// Operator Overloading

let meaning  = 42
let doubleMeaning = meaning + 60

let fName = "siva"
let lName = "krishna"

let name = fName + lName

let emp1 = ["Siva", "Anand"]
let emp2 = ["Manoj", "ashrith"]

let employess = emp1 + emp2   // same '+' operator do any addition based on type we pass called overloading

// Short hand Operators

var score = 100
score -= 10

var quote = "The rain falls almost everyday in "
quote += "Bangalore"
// Comparison Operators

firstScore == secondScore

firstScore != secondScore

firstScore < secondScore

firstScore >= secondScore

"siva" <= "shiva"  // compares alphabetical order

//Conditions


let fisrtCard = 11
let secondCard = 10

if fisrtCard + secondScore == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


if fisrtCard + secondCard == 2 {
    print("Aces – lucky!")
} else if fisrtCard + secondScore == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//combining Conditions

let age1 = 20
let age2 = 22

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("one of them is over 18")
}

//Ternary Operator
fisrtCard == secondCard ? "Both are same cards" : "cards are not same"

let weather = "sunny"

switch weather {
case "rainy":
    print("bring umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy day")
}

switch weather {
case "rainy":
    print("bring umbrella")
case "snow":
    print("Wrap up warm")
    fallthrough
case "sunny":
    print("Wear sunscreen")
    fallthrough    //fallthrough go to next case
default:
    print("Enjoy day")
}


// Range opertaors

switch score {
case 0..<35:
    print("You failed")
case 35...90:
    print("You passed")
default:
    print("You did great")
}
