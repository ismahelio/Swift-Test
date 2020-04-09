// Tuples are like lists
var TupleName = (Value1, value2,… any number of values)

var error501 = (501, “Not implemented”)

// To access by index
error501.1

/ Access tuple items by variable name
var error501 = (errorCode: 501, description: “Not Implemented”)
print(error501.errorCode)   // prints 501.


// Constants
// Constants are treated just like regular variables except the fact that their values cannot be modified after their definition
let constantName = 42

// Specify the type of a variable
var constantName:<data type> = <optional initial value>

// STRING LITERALS to edit strings

\0	Null Character
\\	\character
\b	Backspace
\f	Form feed
\n	Newline
\r	Carriage return
\t	Horizontal tab
\v	Vertical tab
\'	Single Quote
\"	Double Quote
\000	Octal number of one to three digits
\xhh...	Hexadecimal number of one or more digits

let stringL = "Hello\tWorld\n\nHello\'Swift 4\'"
print(stringL)

Hello World
Hello'Swift 4'

// OPERATORS
&&	Called Logical AND operator. If both the operands are non-zero, then the condition becomes true.	
(A && B) is false.
||	Called Logical OR Operator. If any of the two operands is non-zero, then the condition becomes true.	
(A || B) is true.
!	Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then the Logical NOT operator will make it false.	
!(A && B) is true.

// string length
var varA = "Hello, Swift 4!"
print( "\(varA), length is \((varA.count))" )

// string iteration
for chars in "ThisString" {
   print(chars, terminator: " ")
}

// String to int
variable_string.toInt()

//Character
//A character in Swift is a single character String literal, addressed by the data type Characte
let char1: Character = "A"
var char2: Character = "B"

//ARRAYS
//Swift 4 arrays are used to store ordered lists of values of the same type
var someArray = [SomeType](count: NumbeOfElements, repeatedValue: InitialValue)
//You can use the following statement to create an empty array of Int type having 3 elements and the initial value as zero
var someInts = [Int](count: 3, repeatedValue: 0)

var someInts:[Int] = [10, 20, 30]
// Accessing the array by index
var someVar = someInts[0]

someInts.append(20)

//// Modify element
someInts[2] = 50

// Iterating the array
for item in someInts {
   print(item)
}

//enumerate() function which returns the index of an item along with its value 
for (index, item) in someStrs.enumerated() {
   print("Value at index = \(index) is \(item)")
}

// Adding two arrays
var intsC = intsA + intsB
var arrayLength = someInts.count
someInts.isEmpty // returns a boolean

// Sets
let evens: Set = [10,12,14,16,18]

someSet.count        // prints the number of elements
someSet.insert("c")   // adds the element to Set.
someSet.isEmpty       // returns true or false depending on the set Elements.
someSet.remove("c")     // removes a element , removeAll() can be used to remove all elements
someSet.contains("c")     // to check if set contains this value.
someSet.sorted()

// Set operations
let evens: Set = [10,12,14,16,18]
let odds: Set = [5,7,9,11,13]
let primes = [2,3,5,7]
odds.union(evens).sorted() // [5,7,9,10,11,12,13,14,16,18]
odds.intersection(evens).sorted() //[]
odds.subtracting(primes).sorted() //[9, 11, 13]

// DICTIONARY
var someDict = [Int: String]() // Empty dictionary
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
//Swift 4 allows you to create Dictionary from arrays (Key-Value Pairs.)
var cities = [“Delhi”,”Bangalore”,”Hyderabad”]
var Distance = [2000,10, 620]
let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))

var closeCities = cityDistanceDict.filter { $0.value < 1000 } // filtering
["Bangalore" : 10 , "Hyderabad" : 620] //If we run the above code our closeCities Dictionary will be.

var someVar = someDict[key] // accessing dictionary
var oldVal = someDict.updateValue("New value of one", forKey: 1) //updating dictionaries
someDict[1] = "New value of one" //updating dictionaries

var removedValue = someDict.remov eValue(forKey: 2) //Remove Key-Value Pairs - method 1 
someDict[2] = nil //Remove Key-Value Pairs - method 1 

for (index, keyValue) in someDict.enumerated() {
   print("Dictionary key \(index) - Dictionary value \(keyValue)")
} // iterating the dictionary

// keys and values to arrays
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)

someDict.count() //dict length
someDict.isEmpty


// FUNCTIONS

func student(name: String) -> String {
   return name
}

func ls(array: [Int]) -> (large: Int, small: Int) {
   var lar = array[0]
   var sma = array[0]

   for i in array[1..<array.count] {
      if i < sma {
         sma = i
      } else if i > lar {
         lar = i
      }
   }
   return (lar, sma)
}

let num = ls(array: [40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")

// Modify external variables with the funtion using inout and &
func temp(a1: inout Int, b1: inout Int) {
   let t = a1
   a1 = b1
   b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)") //Swapped values are 10, 2

