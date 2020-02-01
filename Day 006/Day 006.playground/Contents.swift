/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 006](https://www.hackingwithswift.com/100/swiftui/6 "Day 006")

 1. [Creating basic closures](https://www.hackingwithswift.com/sixty/6/1/creating-basic-closures "Creating basic closures")

 2. [Accepting parameters in a closure](https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure "Accepting parameters in a closure")

 3. [Returning values from a closure](https://www.hackingwithswift.com/sixty/6/3/returning-values-from-a-closure "Returning values from a closure")

 4. [Closures as parameters](https://www.hackingwithswift.com/sixty/6/4/closures-as-parameters "Closures as parameters")

 5. [Trailing closure syntax](https://www.hackingwithswift.com/sixty/6/5/trailing-closure-syntax "Trailing closure syntax")
 
 6. [Using closures as parameters when they accept parameters](https://www.hackingwithswift.com/sixty/6/6/using-closures-as-parameters-when-they-accept-parameters "Using closures as parameters when they accept parameters")
 
 7. [Using closures as parameters when they return values](https://www.hackingwithswift.com/sixty/6/7/using-closures-as-parameters-when-they-return-values "Using closures as parameters when they return values")
 
 8. [Shorthand parameter names](https://www.hackingwithswift.com/sixty/6/8/shorthand-parameter-names "Shorthand parameter names")

 9. [Closures with multiple parameters](https://www.hackingwithswift.com/sixty/6/9/closures-with-multiple-parameters "Closures with multiple parameters")

 10. [Returning closures from functions](https://www.hackingwithswift.com/sixty/6/10/returning-closures-from-functions "Returning closures from functions")

 11. [Capturing values](https://www.hackingwithswift.com/sixty/6/11/capturing-values "Capturing values")

 12. [Closures summary](https://www.hackingwithswift.com/sixty/6/12/closures-summary "Closures summary")
 
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

/*:
 > ### 6. Using closures as parameters when they accept parameters
*/

func travel1(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel1 { (place: String) in
    print("I'm going to \(place) in my car")
}

/*:
 > ### 7. Using closures as parameters when they return values
*/

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

/*:
 > ### 8. Shorthand parameter names
*/

travel3 { place -> String in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    "I'm going to \(place) in my car"
}

travel3 {
    "I'm going to \($0) in my car"
}

/*:
 > ### 9. Closures with multiple parameters
*/

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour."
}

/*:
 > ### 10. Returning closures from functions
*/
func travel5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel5()
result("London")

let result2 = travel5()("London")

/*:
 > ### 11. Capturing values
*/
func travel6() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result3 = travel6()

result3("London")
result3("London")
result3("London")

/*:
 > ### 12. Closures summary
*/
