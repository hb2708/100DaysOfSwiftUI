/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 002](https://www.hackingwithswift.com/100/swiftui/2 "Day 002")

 1. [Arrays](https://www.hackingwithswift.com/sixty/2/1/arrays "Arrays")

 2. [Sets](https://www.hackingwithswift.com/sixty/2/2/sets "Sets")

 3. [Tuples](https://www.hackingwithswift.com/sixty/2/3/tuples "Tuples")

 4. [Arrays vs sets vs tuples](https://www.hackingwithswift.com/sixty/2/4/arrays-vs-sets-vs-tuples "Arrays vs sets vs tuples")

 5. [Dictionaries](https://www.hackingwithswift.com/sixty/2/5/dictionaries "Dictionaries")

 6. [Dictionary default values](https://www.hackingwithswift.com/sixty/2/6/dictionary-default-values "Dictionary default values")

 7. [Creating empty collections](https://www.hackingwithswift.com/sixty/2/7/creating-empty-collections "Creating empty collections")

 8. [Enumerations](https://www.hackingwithswift.com/sixty/2/8/enumerations "Enumerations")

 9. [Enum associated values](https://www.hackingwithswift.com/sixty/2/9/enum-associated-values "Enum associated values")

 10. [Enum raw values](https://www.hackingwithswift.com/sixty/2/10/enum-raw-values "Enum raw values")

 11. [Complex types: Summary](https://www.hackingwithswift.com/sixty/2/11/complex-types-summary "Complex types: Summary")

*/
/*:
 > ### 1. Arrays
*/
import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

/*:
 > ### 2. Sets
*/
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

/*:
 > ### 3. Tuples
*/
var name = (first: "Taylor", last: "Swift")
name.0
name.first

/*:
 > ### 4. Arrays vs sets vs tuples
*/
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

/*:
 > ### 5. Dictionaries
*/
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

/*:
 > ### 6. Dictionary default values
*/
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

/*:
 > ### 7. Creating empty collections
*/
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

/*:
 > ### 8. Enumerations
*/
let result = "failure"

let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

/*:
 > ### 9. Enum associated values
*/
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity1 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity1.talking(topic: "football")

/*:
 > ### 10. Enum raw values
*/
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

var earth = Planet(rawValue: 2)

enum Planet1: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

var earth1 = Planet1(rawValue: 3)
