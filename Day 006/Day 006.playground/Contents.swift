/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 006](https://www.hackingwithswift.com/100/swiftui/6 "Day 006")

 1. [Creating basic closures](https://www.hackingwithswift.com/sixty/6/1/creating-basic-closures "Creating basic closures")

 2. [Accepting parameters in a closure](https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure "Accepting parameters in a closure")

 3. [Returning values from a closure](https://www.hackingwithswift.com/sixty/6/3/returning-values-from-a-closure "Returning values from a closure")

 4. [Closures as parameters](https://www.hackingwithswift.com/sixty/6/4/closures-as-parameters "Closures as parameters")

 5. [Trailing closure syntax](https://www.hackingwithswift.com/sixty/6/5/trailing-closure-syntax "Trailing closure syntax")
*/

/*:
 > ### 1. Creating basic closures
*/
let driving = {
    print("I'm driving in my car")
}

driving()

/*:
 > ### 2. Accepting parameters in a closure
*/
let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")

/*:
 > ### 3. Returning values from a closure
*/
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

/*:
 > ### 4. Closures as parameters
*/
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

/*:
 > ### 5. Trailing closure syntax
*/
travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}
