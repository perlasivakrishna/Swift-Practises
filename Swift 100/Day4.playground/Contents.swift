import UIKit

//For Loops

let count = 1...10

for number in count {
    print("Numbers are \(number)")
}

let albums = ["red", "1989", "Reputation"]
for album in albums{
    print("album \(album) is on Apple Music")
}

for _ in 1..<5 {
    print("play")
}

//While Loop

var number = 1

while number <= 10 {
    print(number)
    number += 1
}

//repeat loop

repeat {
    print(number)
    number += 1
} while number <= 40

//exiting Loops

while number >= 0{
    print(number)
    number -= 1
    if number == 4 {
        print("stop")
        break
    }
}

// exiting multiple Loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        if j == 5 {
            break
        }
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        if j == 5 {
            break outerLoop
        }
    }
}

//skippint items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//Infinite Loop

while true {
    print(number)
    number += 1
    if number == 100 {
        break
    }

}
