/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 003](https://www.hackingwithswift.com/100/swiftui/3 "Day 003")

 1. [Arithmetic Operators](https://www.hackingwithswift.com/sixty/3/1/arithmetic-operators "Arithmetic Operators")

 2. [Operator overloading](https://www.hackingwithswift.com/sixty/3/2/operator-overloading "Operator overloading")

 3. [Compound assignment operators](https://www.hackingwithswift.com/sixty/3/3/compound-assignment-operators "Compound assignment operators")

 4. [Comparison operators](https://www.hackingwithswift.com/sixty/3/4/comparison-operators "Comparison operators")

 5. [Conditions](https://www.hackingwithswift.com/sixty/3/5/conditions "Conditions")

 6. [Combining conditions](https://www.hackingwithswift.com/sixty/3/6/combining-conditions "Combining conditions")

 7. [The ternary operator](https://www.hackingwithswift.com/sixty/3/7/the-ternary-operator "The ternary operator")

 8. [Switch statements](https://www.hackingwithswift.com/sixty/3/8/switch-statements "Switch statements")

 9. [Range operators](https://www.hackingwithswift.com/sixty/3/9/range-operators "Range operators")

 10. [Operators and conditions summary](https://www.hackingwithswift.com/sixty/3/10/operators-and-conditions-summary "Operators and conditions summary")

*/
/*:
 > ### 1. Arithmetic Operators
*/
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

/*:
 > ### 2. Operator overloading
*/
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

/*:
 > ### 3. Compound assignment operators
*/
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

/*:
 > ### 4. Comparison operators
*/
let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1

firstScore1 < secondScore1
firstScore1 >= secondScore1

"Taylor" <= "Swift"

/*:
 > ### 5. Conditions
*/
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

/*:
 > ### 6. Combining conditions
*/
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

/*:
 > ### 7. The ternary operator
*/
let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are different")

if firstCard1 == secondCard1 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

/*:
 > ### 8. Switch statements
*/
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

/*:
 > ### 9. Range operators
*/
let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

/*:
 > ### 10. Operators and conditions summary
*/
