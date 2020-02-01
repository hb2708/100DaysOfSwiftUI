/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 008](https://www.hackingwithswift.com/100/swiftui/8 "Day 008")

 1. [Creating your own structs](https://www.hackingwithswift.com/sixty/7/1/creating-your-own-structs "Creating your own structs")

 2. [Computed properties](https://www.hackingwithswift.com/sixty/7/2/computed-properties "Computed properties")

 3. [Property observers](https://www.hackingwithswift.com/sixty/7/3/property-observers "Property observers")

 4. [Methods](https://www.hackingwithswift.com/sixty/7/4/methods "Methods")

 5. [Mutating methods](https://www.hackingwithswift.com/sixty/7/5/mutating-methods "Mutating methods")

 6. [Properties and methods of strings](https://www.hackingwithswift.com/sixty/7/6/properties-and-methods-of-strings "Properties and methods of strings")

 7. [Properties and methods of arrays](https://www.hackingwithswift.com/sixty/7/7/properties-and-methods-of-arrays "Properties and methods of arrays")

*/

/*:
 > ### 1. Creating your own structs
*/

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)

/*:
 > ### 2. Computed properties
*/

struct Sport1 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

/*:
 > ### 3. Property observers
*/

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

/*:
 > ### 4. Methods
*/

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

/*:
 > ### 5. Mutating methods
*/

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

/*:
 > ### 6. Properties and methods of strings
*/

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

/*:
 > ### 7. Properties and methods of arrays
*/

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)
