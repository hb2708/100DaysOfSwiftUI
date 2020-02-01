/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 011](https://www.hackingwithswift.com/100/swiftui/11 "Day 011")

 1. [Protocols](https://www.hackingwithswift.com/sixty/9/1/protocols "Protocols")

 2. [Protocol inheritance](https://www.hackingwithswift.com/sixty/9/2/protocol-inheritance "Protocol inheritance")

 3. [Extensions](https://www.hackingwithswift.com/sixty/9/3/extensions "Extensions")

 4. [Protocol extensions](https://www.hackingwithswift.com/sixty/9/4/protocol-extensions "Protocol extensions")

 5. [Protocol-oriented programming](https://www.hackingwithswift.com/sixty/9/5/protocol-oriented-programming "Protocol-oriented programming")

 6. [Protocols and extensions summary](https://www.hackingwithswift.com/sixty/9/6/protocols-and-extensions-summary "Protocols and extensions summary")

*/

/*:
 > ### 1. Protocols
*/

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let user = User(id: "123")
displayID(thing: user)

/*:
 > ### 2. Protocol inheritance
*/

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

/*:
 > ### 3. Extensions
*/
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
print(number.squared())
print(number.isEven)

/*:
 > ### 4. Protocol extensions
*/
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

/*:
 > ### 5. Protocol-oriented programming
*/
protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()

/*:
 > ### 6. Protocols and extensions summary
*/
