/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 010](https://www.hackingwithswift.com/100/swiftui/10 "Day 010")

 1. [Creating your own classes](https://www.hackingwithswift.com/sixty/8/1/creating-your-own-classes "Creating your own classes")

 2. [Class inheritance](https://www.hackingwithswift.com/sixty/8/2/class-inheritance "Class inheritance")

 3. [Overriding methods](https://www.hackingwithswift.com/sixty/8/3/overriding-methods "Overriding methods")

 4. [Final classes](https://www.hackingwithswift.com/sixty/8/4/final-classes "Final classes")

 5. [Copying objects](https://www.hackingwithswift.com/sixty/8/5/copying-objects "Copying objects")

 6. [Deinitializers](https://www.hackingwithswift.com/sixty/8/6/deinitializers "Deinitializers")

 7. [Mutability](https://www.hackingwithswift.com/sixty/8/7/mutability "Mutability")

 8. [Classes summary](https://www.hackingwithswift.com/sixty/8/8/classes-summary "Classes summary")

*/

/*:
 > ### 1. Creating your own classes
*/

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

/*:
 > ### 2. Class inheritance
*/

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

/*:
 > ### 3. Overriding methods
*/
class Dog1 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle1: Dog1 {
}

let poppy1 = Poodle1()
poppy1.makeNoise()

class Poodle2: Dog1 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()

/*:
 > ### 4. Final classes
*/
final class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

/*:
 > ### 5. Copying objects
*/
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

/*:
 > ### 6. Deinitializers
*/
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

/*:
 > ### 7. Mutability
*/
class Singer1 {
    var name = "Taylor Swift"
}

let taylor = Singer1()
taylor.name = "Ed Sheeran"
print(taylor.name)

/*:
 > ### 8. Classes summary
*/
