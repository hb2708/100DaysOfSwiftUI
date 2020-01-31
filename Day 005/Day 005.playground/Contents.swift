/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 005](https://www.hackingwithswift.com/100/swiftui/5 "Day 005")

 1. [Writing functions](https://www.hackingwithswift.com/sixty/5/1/writing-functions "Writing functions")

 2. [Accepting parameters](https://www.hackingwithswift.com/sixty/5/2/accepting-parameters "Accepting parameters")

 3. [Returning values](https://www.hackingwithswift.com/sixty/5/3/returning-values "Returning values")

 4. [Parameter labels](https://www.hackingwithswift.com/sixty/5/4/parameter-labels "Parameter labels")

 5. [Omitting parameter labels](https://www.hackingwithswift.com/sixty/5/5/omitting-parameter-labels "Omitting parameter labels")

 6. [Default parameters](https://www.hackingwithswift.com/sixty/5/6/default-parameters "Default parameters")

 7. [Variadic functions](https://www.hackingwithswift.com/sixty/5/7/variadic-functions "Variadic functions")

 8. [Writing throwing functions](https://www.hackingwithswift.com/sixty/5/8/writing-throwing-functions "Writing throwing functions")

 9. [Running throwing functions](https://www.hackingwithswift.com/sixty/5/9/running-throwing-functions "Running throwing functions")

 10. [inout parameters](https://www.hackingwithswift.com/sixty/5/10/inout-parameters "inout parameters")

 11. [Functions summary](https://www.hackingwithswift.com/sixty/5/11/functions-summary "Functions summary")
*/
/*:
 > ### 1. Writing functions
*/
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

/*:
 > ### 2. Accepting parameters
*/
print("Hello, world!")

func square(number: Int) {
    print(number * number)
}

square(number: 8)

/*:
 > ### 3. Returning values
*/
func squareOf(number: Int) -> Int {
    return number * number
}

let result = squareOf(number: 8)
print(result)

/*:
 > ### 4. Parameter labels
*/
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

/*:
 > ### 5. Omitting parameter labels
*/
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

/*:
 > ### 6. Default parameters
*/
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

/*:
 > ### 7. Variadic functions
*/
print("Haters", "gonna", "hate")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

/*:
 > ### 8. Writing throwing functions
*/
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

/*:
 > ### 9. Running throwing functions
*/
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

do {
    try checkPassword("password2")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


/*:
 > ### 10. inout parameters
*/
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

/*:
 > ### 11. Functions summary
*/
