/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 009](https://www.hackingwithswift.com/100/swiftui/9 "Day 009")

 1. [Initializers](https://www.hackingwithswift.com/sixty/7/8/initializers "Initializers")

 2. [Referring to the current instance](https://www.hackingwithswift.com/sixty/7/9/referring-to-the-current-instance "Referring to the current instance")

 3. [Lazy properties](https://www.hackingwithswift.com/sixty/7/10/lazy-properties "Lazy properties")

 4. [Static properties and methods](https://www.hackingwithswift.com/sixty/7/11/static-properties-and-methods "Static properties and methods")

 5. [Access control](https://www.hackingwithswift.com/sixty/7/12/access-control "Access control")

 6. [Structs summary](https://www.hackingwithswift.com/sixty/7/13/structs-summary "Structs summary")

*/

/*:
 > ### 1. Initializers
*/

struct User {
    var username: String
}

var user = User(username: "twostraws")

struct User1 {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user1 = User1()
user1.username = "twostraws"

/*:
 > ### 2. Referring to the current instance
*/

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
let person = Person(name: "Harshal")

/*:
 > ### 3. Lazy properties
*/

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person1 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person1(name: "Ed")

ed.familyTree

/*:
 > ### 4. Static properties and methods
*/

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed1 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student1 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student1.classSize += 1
    }
}
let ed2 = Student1(name: "Ed")
let taylor1 = Student1(name: "Taylor")

print(Student1.classSize)
/*:
 > ### 5. Access control
*/

struct Person2 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ed3 = Person2(id: "12345")
ed3.identify()

/*:
 > ### 6. Structs summary
*/

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
