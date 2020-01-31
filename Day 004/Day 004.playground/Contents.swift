/*:
 # 100DaysOfSwiftUI

 My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

 > ## [Day 004](https://www.hackingwithswift.com/100/swiftui/4 "Day 004")

 1. [For loops](https://www.hackingwithswift.com/sixty/4/1/for-loops "For loops")

 2. [While loops](https://www.hackingwithswift.com/sixty/4/2/while-loops "While loops")

 3. [Repeat loops](https://www.hackingwithswift.com/sixty/4/3/repeat-loops "Repeat loops")

 4. [Exiting loops](https://www.hackingwithswift.com/sixty/4/4/exiting-loops "Exiting loops")

 5. [Exiting multiple loops](https://www.hackingwithswift.com/sixty/4/5/exiting-multiple-loops "Exiting multiple loops")

 6. [Skipping items](https://www.hackingwithswift.com/sixty/4/6/skipping-items "Skipping items")

 7. [Infinite loops](https://www.hackingwithswift.com/sixty/4/7/infinite-loops "Infinite loops")

 8. [Looping summary](https://www.hackingwithswift.com/sixty/4/8/looping-summary "Looping summary")


*/
/*:
 > ### 1. For loops
*/
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

/*:
 > ### 2. While loops
*/
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

/*:
 > ### 3. Repeat loops
*/
number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")// This will give a warning
}

repeat {
    print("This is false")
} while false

/*:
 > ### 4. Exiting loops
*/
var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

/*:
 > ### 5. Exiting multiple loops
*/
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

/*:
 > ### 6. Skipping items
*/
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

/*:
 > ### 7. Infinite loops
*/
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

/*:
 > ### 8. Looping summary
*/
