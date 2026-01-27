import UIKit

/*
 Naming Conventions(Recomendations)
 UpperCamelCase: Types
 Classes, Structs, Enums, Extensions, Protols.
 struct AppDeveloper{}
 
 lowerCamelCase: Values
 Variables, Constants, Functions, Properties, Parameters.
 var numberOfStudents = 30
 */

//Variables(var)
//A variable's value CAN be changed after it is set
var course = "iOS" //String
var crn = 20819 //Integer
var valid = true //Boolean
course
print(course)
dump(course)
valid
print(valid)
dump(valid) //run: shift+enter

//Constants(let)
//A constant's value CANNOT change after it is set
let numberOfStudents = 30
print(numberOfStudents)
dump(numberOfStudents)

//Data types: Int, Double, String, Boolean..
//(type (of:)
print(type(of: numberOfStudents))

let num1 = 123
let num2 = 123.45
print(type(of: num1))
print(type(of: num2))

//Type Conversion create a new value in a different type
let invalidStr = "100"   //String
let invalidNum = Int(invalidStr)
print(invalidNum) //optional(100)

let score = 95
let scoreText = String(score)
print(scoreText) //"95"

//Type Inference, Type Annotation
let age: Int = 25 //Annotated
let pi = 3.141592653 //Inferenced
let name = "Brady"

//Conditions(if statements)
//Odd/Even check
let a = 10
if a%2 == 0 {
    print("\(a) is even")
} else {
    print("\(a) is odd")
}

//Check today's date
let weekday = Calendar.current.component(.weekday, from: Date())
if weekday == 1 {
    print("Today is Sunday")
} else if weekday == 7 {
    print("Today is Saturday")
} else if weekday == 2 {
    print("Today is Monday")
} else if weekday == 3 {
    print("Today is Tuesday")
} else if weekday == 4 {
    print("Today is Wednesday")
} else if weekday == 5 {
    print("Today is Thursday")
}

