import UIKit

// closue as parameter with parameter to function

func travel(action: (String) -> Void){
    print("I'm getting ready")
    action("London")
    print("I arrived")
}

travel { (place) in
    print("i'm going to \(place) in my car")
}

// closue as parameter with parameter and return to function

func travel(action: (String) -> String) {
    print("I'm getting ready")
   let desc = action("London")
    print(desc)
    print("I arrived")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// short hand
travel { (place) in
    return "I'm going to \(place) in my car"
}

travel { (place) in
     "I'm going to \(place) in my car"
}

travel {
    "I'm going to \($0) in my car"
}


// closure with multtiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}


// returning closure from functions

func tavel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = tavel()
result("London")
let result2 = tavel()("London")

func travel1() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result1 = travel1()

result1("London")
result1("London")
result1("London")
