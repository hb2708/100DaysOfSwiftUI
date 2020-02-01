/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 007](https://www.hackingwithswift.com/100/swiftui/7 "Day 007")

 1. [Using closures as parameters when they accept parameters](https://www.hackingwithswift.com/sixty/6/6/using-closures-as-parameters-when-they-accept-parameters "Using closures as parameters when they accept parameters")

 2. [Using closures as parameters when they return values](https://www.hackingwithswift.com/sixty/6/7/using-closures-as-parameters-when-they-return-values "Using closures as parameters when they return values")

 3. [Shorthand parameter names](https://www.hackingwithswift.com/sixty/6/8/shorthand-parameter-names "Shorthand parameter names")

 4. [Closures with multiple parameters](https://www.hackingwithswift.com/sixty/6/9/closures-with-multiple-parameters "Closures with multiple parameters")

 5. [Returning closures from functions](https://www.hackingwithswift.com/sixty/6/10/returning-closures-from-functions "Returning closures from functions")

 6. [Capturing values](https://www.hackingwithswift.com/sixty/6/11/capturing-values "Capturing values")

 7. [Closures summary](https://www.hackingwithswift.com/sixty/6/12/closures-summary "Closures summary")
*/

/*:
 > ### 1. Using closures as parameters when they accept parameters
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
 > ### 2. Using closures as parameters when they return values
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
 > ### 3. Shorthand parameter names
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
 > ### 4. Closures with multiple parameters
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
 > ### 5. Returning closures from functions
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
 > ### 6. Capturing values
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
 > ### 7. Closures summary
*/
