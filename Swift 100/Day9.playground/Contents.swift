import UIKit

//Initializers

struct User {
    var userName: String
}

var user = User(userName: "Krishna")  // default initializers or memberwise


struct AnotherUser {
    var userName: String
    
    init() {
        userName = "Anonymous"
        print("Creating new user")
    } // own initializer
}

var user2 = AnotherUser()
user2.userName = "Siva Krishna"

//Referring to Current Instance using self

struct Person {
    var name: String
    
    init(name: String) {
        self.name = name  // refer using self distingush parameters
    }
}

let person = Person(name: "Siva")

// lazy var

struct FamilyTree {
    init() {
        print("creating family tree")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var person2 = Person2(name: "anand")
person2.familyTree

// Static properties and methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "siva")
let krish = Student(name: "anand")
print(Student.classSize)


// Access Control

struct Employee {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "MY SSN is \(id)"
    }
}

var employee = Employee(id: "12345")
employee.identify()
// employee.id = "345" // this doesn't work as it's private

struct FacebookUser {
    private var privatePosts: [String]
    public var publicPosts: [String]
}
// let user = FacebookUser()

 //This has a private property, so Swift is unable to generate its memberwise initializer for us.

struct Contributor {
    private var name = "Anonymous"
}
let paul = Contributor()

struct Doctor {
    var name: String
    var location: String
//    private var currentPatient = "No one"
}

//let drJones = Doctor(
