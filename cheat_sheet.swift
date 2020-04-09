/ Tuples are like lists
var TupleName = (Value1, value2,… any number of values)

var error501 = (501, “Not implemented”)

/ To access by index
error501.1

/ Access tuple items by variable name
var error501 = (errorCode: 501, description: “Not Implemented”)
print(error501.errorCode)   // prints 501.


/ Constants
/ Constants are treated just like regular variables except the fact that their values cannot be modified after their definition
let constantName = 42

/ Specify the type of a variable
var constantName:<data type> = <optional initial value>

/ STRING LITERALS to edit strings

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

/ OPERATORS
&&	Called Logical AND operator. If both the operands are non-zero, then the condition becomes true.	
(A && B) is false.
||	Called Logical OR Operator. If any of the two operands is non-zero, then the condition becomes true.	
(A || B) is true.
!	Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then the Logical NOT operator will make it false.	
!(A && B) is true.

/ string length
var varA = "Hello, Swift 4!"
print( "\(varA), length is \((varA.count))" )

/ string iteration
for chars in "ThisString" {
   print(chars, terminator: " ")
}

/ String to int
variable_string.toInt()


