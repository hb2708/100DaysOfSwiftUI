import Foundation
print( URL(string: "")!)
///*:
// # 100DaysOfSwiftUI
//
// My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui
//
// > ## [Day 012](https://www.hackingwithswift.com/100/swiftui/12 "Day 012")
//
// 1. [Handling missing data](https://www.hackingwithswift.com/sixty/10/1/handling-missing-data "Handling missing data")
//
// 2. [Unwrapping optionals](https://www.hackingwithswift.com/sixty/10/2/unwrapping-optionals "Unwrapping optionals")
//
// 3. [Unwrapping with guard](https://www.hackingwithswift.com/sixty/10/3/unwrapping-with-guard "Unwrapping with guard")
//
// 4. [Force unwrapping](https://www.hackingwithswift.com/sixty/10/4/force-unwrapping "Force unwrapping")
//
// 5. [Implicitly unwrapped optionals](https://www.hackingwithswift.com/sixty/10/5/implicitly-unwrapped-optionals "Implicitly unwrapped optionals")
//
// 6. [Nil coalescing](https://www.hackingwithswift.com/sixty/10/6/nil-coalescing "Nil coalescing")
//
// 7. [Optional chaining](https://www.hackingwithswift.com/sixty/10/7/optional-chaining "Optional chaining")
//
// 8. [Optional try](https://www.hackingwithswift.com/sixty/10/8/optional-try "Optional try")
//
// 9. [Failable initializers](https://www.hackingwithswift.com/sixty/10/9/failable-initializers "Failable initializers")
//
// 10. [Typecasting](https://www.hackingwithswift.com/sixty/10/10/typecasting "Typecasting")
//
// 11. [Optionals summary](https://www.hackingwithswift.com/sixty/10/11/optionals-summary "Optionals summary")
//
//*/
//
///*:
// > ### 1. Handling missing data
//*/
//
//var age: Int? = nil
//age = 38
//
//
///*:
// > ### 2. Unwrapping optionals
//*/
//var name: String? = nil
//
//if let unwrapped = name {
//    print("\(unwrapped.count) letters")
//} else {
//    print("Missing name.")
//}
//
///*:
// > ### 3. Unwrapping with guard
//*/
//func greet(_ name: String?) {
//    guard let unwrapped = name else {
//        print("You didn't provide a name!")
//        return
//    }
//
//    print("Hello, \(unwrapped)!")
//}
//greet(nil)
//greet("Harshal")
//
///*:
// > ### 4. Force unwrapping
//*/
//let str = "5"
//let num = Int(str)
//let num1 = Int(str)!
//
///*:
// > ### 5. Implicitly unwrapped optionals
//*/
//let age1: Int! = nil
//
///*:
// > ### 6. Nil coalescing
//*/
//
//func username(for id: Int) -> String? {
//    if id == 1 {
//        return "Taylor Swift"
//    } else {
//        return nil
//    }
//}
//
//let user = username(for: 15) ?? "Anonymous"
//
///*:
// > ### 7. Optional chaining
//*/
//
//let names = ["John", "Paul", "George", "Ringo"]
//let beatle = names.first?.uppercased()
//
///*:
// > ### 8. Optional try
//*/
//
//enum PasswordError: Error {
//    case obvious
//}
//
//func checkPassword(_ password: String) throws -> Bool {
//    if password == "password" {
//        throw PasswordError.obvious
//    }
//
//    return true
//}
//
//do {
//    try checkPassword("password")
//    print("That password is good!")
//} catch {
//    print("You can't use that password.")
//}
//
//if let result = try? checkPassword("password") {
//    print("Result was \(result)")
//} else {
//    print("D'oh.")
//}
//
//try! checkPassword("sekrit")
//print("OK!")
//
///*:
// > ### 9. Failable initializers
//*/
//
//let str1 = "5"
//let num2 = Int(str1)
//
//struct Person {
//    var id: String
//
//    init?(id: String) {
//        if id.count == 9 {
//            self.id = id
//        } else {
//            return nil
//        }
//    }
//}
//
///*:
// > ### 10. Typecasting
//*/
//
//class Animal { }
//class Fish: Animal { }
//
//class Dog: Animal {
//    func makeNoise() {
//        print("Woof!")
//    }
//}
//
//let pets = [Fish(), Dog(), Fish(), Dog()]
//
//for pet in pets {
//    if let dog = pet as? Dog {
//        dog.makeNoise()
//    }
//}
//
///*:
// > ### 11. Optionals summary
//*/
//
