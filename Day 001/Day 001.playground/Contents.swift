/*:
 
# 100DaysOfSwiftUI

My Progress while trying to complete 100 Days Of SwiftUI Challenge by Paul Hudson - https://www.hackingwithswift.com/100/swiftui

> ## [Day 001](https://www.hackingwithswift.com/100/swiftui/1 "Day 001")

1. [Variables](https://www.hackingwithswift.com/sixty/1/1/variables "Variables")

2. [Strings and integers](https://www.hackingwithswift.com/sixty/1/2/strings-and-integers "Strings and integers")

3. [Multi-line strings](https://www.hackingwithswift.com/sixty/1/3/multi-line-strings "Multi-line strings")

4. [Doubles and booleans](https://www.hackingwithswift.com/sixty/1/4/doubles-and-booleans "Doubles and booleans")

5. [String interpolation](https://www.hackingwithswift.com/sixty/1/5/string-interpolation "String interpolation")

6. [Constants](https://www.hackingwithswift.com/sixty/1/6/constants "Constants")

7. [Type annotations](https://www.hackingwithswift.com/sixty/1/7/type-annotations "Type annotations")

8. [Simple types: Summary](https://www.hackingwithswift.com/sixty/1/8/simple-types-summary "Simple types: Summary")
*/
/*:
 > ### 1. Variables
*/
import UIKit

var str = "Hello, playground"
str = "Goodbye"
/*:
 > ### 2. Strings and integers
*/
var age = 38
var population = 8_000_000
/*:
 > ### 3. Multi-line strings
*/
var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
line
"""
/*:
 > ### 4. Doubles and booleans
*/
var pi = 3.141
var awesome = true
/*:
 > ### 5. String interpolation
*/
var score = 85
var strScore = "Your score was \(score)"
var results = "The test results are here: \(strScore)"
/*:
 > ### 6. Constants
*/
let taylor = "swift"
/*:
 > ### 7. Type annotations
*/
let constString = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

