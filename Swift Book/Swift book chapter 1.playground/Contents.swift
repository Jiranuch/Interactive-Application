//: Playground - noun: a place where people can play

import UIKit

var myVariable = 42
myVariable = 50
let myConstant = 42

//let implicitInteger = 70
//let implicitDouble = 70.0
//let expliciDouble: Double = 70
//Don't always have to write explicity

//let label = "The width is"
//let width = 94
//let widthLabel = label + String(width)

//This is simpler way to include value in strings
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruiteSummary = "I have \(apples + oranges) pieces of fruit."

//Create an arrays and dictionaries using brackets ([])
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"

//create an empty array or dictionary by using the initializer syntax
let emptyArray = [String]()
let emptyDictionary = [String: Float] ()

//If the information can be inferred, write an empty array as [] and an empty dictionary as [:]
shoppingList = []
occupations = [:]

//Control Flow
//"if" and "switch" to make conditionals, and use "for-in","for","while" and "repeat-while" to make loops
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

//you can us "if" and "let" together to work with values that might be missing. An optional value either contains a value or contains nil to indicate that value is missing. "?" after the type of to mark the value as optional.
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

//Another way to handle optional values is provide a default value is using the ?? operator
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

//Switches support any kind of data and a wide variety of comparison operations
let vagetable = "red peper"
switch vagetable {
    case "celery":
        print("Add some raisins and make ants on a log")
    case "cucumber","watercress":
        print("That would make a good tea sandwich")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

//Use "for-in" to iterate over items in a dictionary by providing a pair of names to use for each key-value pair.
let interstingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "fibonacci": [1, 1, 2, 3, 5, 7],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interstingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

//Use "while" to repeat a block of code until a condition changes
var n = 2
while n < 100 {
    n = n * 2
}

print(n)

var m = 2
repeat {
    m = m * 2
}

while m < 100

print(m)

//can keep an index in a loop by using ..< to make a range of indexes 
var total = 0
for i in 0..<4 {
    total += i
}

print(total)

//Functions and Closures 
//Use "func" to declare a function. Call a function by following its name with a list of arguments in parentheses. Use -> to separate the parameter names and types from the function's return type
func greet (person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

greet(person: "bob", day:"Tuesday")

//By using "_" for no argument label
func greet(_person: String, on day: String) -> String {
    return "Hello \(_person), today is \(day)"
}


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//functions can also take a variable number of arguments, collecting them into an array 
func sumOf(number: Int...) -> Int {
    var sum = 0
    for number in number {
        sum += number
    }
    
    return sum
}

sumOf ()
sumOf(number: 42, 597, 12)

//functions can be nested. Nested functions have access to variable that were declared in the outer function. This can be use to organize the code in a function that is long or complex
func returnFifteen () -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

returnFifteen()

//functions are a first-class type. This means that a function can return another function as its value 
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer ()
increment(7)

//function can take another function as one of its argements
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition (item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var number = [20, 19, 7, 12]
hasAnyMatches(list: number, condition: lessThanTen)


let mappedNumbers = number.map({number in 3 * number })
print(mappedNumbers)

let sortedNumbers = number.sorted {$0 > $1}
print(sortedNumbers)

//Objects and Classes 
//Use "Class" followed by the class's name to create a class 
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

Create an instance of class by putting parentheses after the class name. Use dot syntax to access the properties and methods of the instance
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescrip() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(name:String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name:name)
        numberOfSides = 4
    }
    
    func area () -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


class TriangleAndSqure {
    var triangle: equilaterTriangle{
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.dideLength
        }
    }
    
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSqure (size: 10, name: "another test shape")
print(TriangleAndSqure.square.sideLength)
print(TriangleAndSqure.triangle.sideLength)
TriangleAndSqure.square = Square(sideLength: 50, name: "Large Square")
print(TriangleAndSqure.triangle.sideLength)

//Enumerations and Structures
//Use "enum to create an enumerations

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self{
        case.ace:
            return "ace"
        case.jack:
            return "jack"
        case.queen:
            return "queen"
        case.king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue

if let converted = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, dismonds, clubs
    func simpleDescription() -> String {
        switch self{
        case.spades:
            return "spades"
        case.hearts:
            return "hearts"
        case.diamonds:
            return "diamonds"
        case.clubs:
            return "clubs"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

enum SeverResponse {
    case result(String, String)
    case failture(String)
}

let success = SeverResponse.result("6:00am", "8.09pm")
let failure = SeverResponse.failure("Out of cheese")

switch success {
    case let.result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
    case let.failure(message):
        print("Failure... \(message)")
}

//Protocals and Extensions 
//Use "protocal" to declare a protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//classes, enumerations, and structs can all adopt protocols
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "Now 100% adjusted"
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

//Error Handling 
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never has toner"{
        throw PrinterError.noToner
    }
    
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "bi Sheng")
    print(printerResponse)
} catch {
   print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire{
    print ("I'll just put this over here, with the rest of the fire")
} catch {
    print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never has toner")

var fridgeIsOpen = false
let fridgcontent = ["milk", "egg", "leftovers"]

func fridgeContains(_food: String) -> Bool {
    fridgeIsOpen = true
    defer{
        fridgeIsOpen = false
    }
    
    let result = fridgcontent.contains(_food)
    return result
}

fridgeContains(food: "banana")
print(fridgeIsOpen)

//Generics
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes{
        result.append(item)

    }
    
    return result
}

makeArray(repeating: "knock", numberOfTimes:4)

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence>(_lhs: T, _ rhs: U) -> Bool
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
}

anyCommonElements([1,2,3],[3])


















