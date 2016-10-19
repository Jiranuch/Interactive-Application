//swift is a type-safe language, which means the language helps you to be clear about the tpes of values your code can work with. 

//Declaring Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttept = 0

//Type Annotations
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

//Nameing Constants and Variables
let pie = 3.14
let นุช = "รัก"

//You can change the value of an existing variable to another value of a compatible type.
var friendlyWelcome = "Hello"
friendlyWelcome = "Sawandee"
//friendlyWelcome is now "Sawandee"

//unlike a vaiable, the value of a constant cannot be changed once it is set. Attempting to do so is reported as an error when your code is compiled

/* let languageName = "Swift"
languageName = "Swift++" */

// This is a compile-time error: languageName cannot be changed

//you can print the current value of a constant or variable with the "print(_:separator:terminator:)"
print(friendlyWelcome)
//prints "Sawandee"

print("The current value of friendlyWelcome is \(friendlyWelcome)")
//Print "The current vaue of friendlyWelcome is Sawandee"

/* Integers are whole number with no fractional component, such as 42 and -23. Intergers are either signed (positive, zero, or negative) or unsigned (positive or zero */

//Integer Bounds
let minValue = UInt8.min //minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max //maxValue is eual to 255, and is of type UInt8

//Type Safety and Type Inference
let meaningOfLife = 42
//meaningOfLife is inferred to be of type Int 

let pi = 3.14
//pi is inferred to be of type Double

let anotherPi = 3 + 0.14
//anotherPi is also interred to be of type Double 

//Number Literals 
/* Interget literals can be written as:
 A decimal number, with no prefix 
 A binary number, with a 0b prefix 
 An octal number, with a 0o prefix
 A hexadecimal number, with a 0x prefix */

//All of these integer literals have a decimal value of 17
let decimalInterger = 17
let binaryInteger = 0b10001 //17 in binary notation
let octalInteger = 0o21 //17 in octal notation
let hexadecimalInterger = 0x11 //17 in hexadecial notation

/*Decimal floats can also have an aptional "exponent", indicated by an uppercase or lowrcase "e"; hexadecimal floats much have an exponent, indicated by an uppercase or lowercase "p" */
//for decimal numbers with an exponent of "exp", the base number is multiplied by 10exp

/* 1.25e2 means 1.25x10^2, or 125.0 */
/* 1.25e-2 means 1.25x10^-2 or 0.0125 */

//for dexadecimal numbers with an exponent of "exp", the base number is multiplied by 2exp

/* 0xFp2 means 15x2^2, or 60.0 */
/* 0xFp-2 means 15x2^-2, or 3.75 */

/* All of these floating-point literals have a decimal value of 12.1875 */
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/* Number literals can contain extra formatting to make them easier to read. Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. */
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000_000_1

//Integer Conserxion 
/* The range of numbers that can be stored in an integer constant or variable is different for each numberic type. Int8 constant or variable can store numbers between -128 and 127, whereas a UInt8 constant or variable can store number between 0 and 255. */

/* let cannotBeNegative: UInt8 = -1 */
// UInt8 cannot store negative numbers, this will give an error

/*let tooBig: Int8.max + 1 */
// Int8 cannot store a number larger than its maximum value

/* To convert one specific number type to another, you initialize a new number of the desired type with the existing value. Cannot add UInt16 and UInt8 together, because they are not the same type. */

/* let twoThousand: UInt8 = 2_000
let one: UInt16 = 1
let twoThougsandAndOne = twoThousand + UInt16(one) */

//Integer and Floating-Point Conversion
/* Conversions between integer and floating-point numeric types must be made explicit */

/* let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine */

//pi equals 3.14159, and is inferred to be of type Double

/* Floating-point to integer conversion "three" is used to create a new value of type "Double", so that both side of the addition are the same type. Without this conversion in place, the addition would not be allowed. */

/* Floating-point to integer consesion must also be made explicit. An integer type can be initialized with a "Double" or "Float" value: */

let intergePi = Int(pi)
//integerPi equals 3, and is inferred to be of type Int

//Type Aliases 
/* "Type aliases define an alternative name for an existing type, You define type aliases with te "typealias". Type aliases are useful when you want to refer to an existing type by name that is contextually more appropriate, such as when working with data of a specific size from an external sourse */
typealias AudioSample = UInt16

/* Once you define a type alias, you can use the alias anywhere you might use the original name */
var maxAmplitudeFound = AudioSample.min
//maxAmplitudeFound is now 0
/* AudioSample is defined as an alias for "Uint16". Because it is an alias, te call to "AudioSample.min" actually calls UInt16.min, which provides an initial value of 0 for the "maxAmplitudeFound" variable */

//Booleans
/* Swift has a basic Boolean type, called "Bool". Boolean values are referred to as logical, because they can only be true or false. */
let orangesAreOrange = true
let turnipsAreDelicious = false

/* Boolean values are particularly useful when you work with conditional statements such as "if" statement */
if turnipsAreDelicious {
    print("Mmm, tasty turnips")
} else {
    print("Eww, turnips are horrible")
}
//Print "Eww, turnips are horrible"

//Tuples 
/* Tuples group muliple values into a single compound value. The values within a tuple can be of any type and do not have to be of the same type as each other. */

let http404Error = (404, "Not Found")
//http404Error is the type (Int, String), and equals (404, "Not Found")

/*Tuple groups together an "Int" and a "String" to give the HTTP status code two sperate value. This can be create tuples from any permulation of types, and they cna contain as many different types as you like. It can be "(Int, Int, Int)", or "(String, Bool)", or any other permutation require. */

/* You can decompise a tuple's contents inte separate constants or variables. */
let (statusCode, statusMessage) = http404Error
print ("The status code is \(statusCode)")
//Print "The status code is 404"
print ("The status message is \(statusMessage)")
//Print "The status message is not Found"

/* Alternatively, access the individual element values in a tuple using index number starting at zero. */
print ("The status code is \(http404Error.0)")
print ("The status message is \(http404Error.1)")

/* You can name the individual element in a tuple when the tuple is defined */
let http200Status = (statusCode:200, description: "ok")

/* If you name the elements in a tuple, you cna use the element names to access the values of theose elements. */
print ("The status code is \(http200Status.statusCode)")
print ("The status message is \(http200Status.description)")

//Optionals
/* Use optional in situations where a value may be absent. */
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
//convertedNumber is inferred to be of type "Int?", or "optional Int"

/* An optional "Int" is written as "Int?", not "Int". The question mark indicates that the value it contains is optional, meaning that it might contain some "Int" value, or it might contain no value at all */

//nil
/* set an optional variable to a valueless state by assigning it the special value "nil" */
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
//serverResponseCode now contains no Value

/* If you define an optional variable without providing a default value, the variable is automatically ser to "nil". */
var surveyAnser: String?
//surveyAnswer is automatically set to nil

//If Statements and Forced Unwrapping
/*Use an "if" statement to find out whether an optional contains a value by comparing the optional against "nil". Perform this comparison with the "equal to" operatior (==) or the "not equal to" operator (!=) */
/* If an optional has a value, it is considered to be "not equal to" nil */
if convertedNumber != nil {
    print ("convertedNumber contains some integer value")
}

/* if you are sure that the optional doesn contain a value, you can access its underlying value by adding an exclanation mark (!) to the end of the optional's name. */
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

//Optional Binding
/* Use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with "if" and "while" statement to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action. */
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an interger value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print ("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

//Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string"
let forcedString: String = possibleString! //requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString //no need for an exclamation mark

/* You can still trat an implicitly unwrapped optional like a normal optional, to check if it contains a value */
if assumedString != nil {
    print(assumedString)
}

/* You can also use an implicitly unwrapped optional with optional binding, to check and unwrap its value in a single statememt */
if let definiteString = assumedString {
    print(definiteString)
}



// I pitty much understand almost everything in a second chapter of the book. It would be good if you can go through the sections that related to the "optional" again. I find that section abit confuese, like how it had wrap and unwrap or something like that. I did type everything down for my personal note eventhough we don't need too.








