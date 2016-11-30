//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//A Swift Tour
print("Hello, world!")

//Simple Values
var myVariable = 42
myVariable = 50
let myConstant = 42
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//Create Array
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

//Create Dictionary
var occupations = ["Malcolm" : "Captain", "Kaylee" : "Mechanic"]
occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:]
shoppingList = []
occupations = [:]

//Control Flow
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
print(teamScore)

var  optionalString: String? = "Hello"
print(optionalString==nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

//Switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasPrefix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}

//for
let interestingNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 4, 9, 16, 25]
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//While
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

//Repeat
var m = 2
repeat {
    m = m * 2
} while m < 100

print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

//Functions and Closures
func greet(person: String, days: String) -> String {
    return "Hello \(person), today is \(days)."
}
greet(person: "Bob", days: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet("John", on: "Wednesday")


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 42, 597, 12)


