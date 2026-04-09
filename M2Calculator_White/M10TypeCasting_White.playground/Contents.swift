import UIKit

var a = 123 as Any
a = 456
a = 456.789
a = "Hello Any Type"

//a.count

//Type Check - is operator
//Val(expr) is Type
a is Int
a is String

//Type Casting
//1.) Compile Type Casting
let str = "Hello World" //Swift String, struct
let nsstr: NSString = "Hello Special" //Foundation String, class

//Some Swift and Foundation Types are bridged.
//String <-> NSString
//Array <-> NSArray
//Date <-> NSDate

let nsstrFromStr: NSString = str as NSString
let strFromNSstr: String = nsstr as String




//2.) Runtime Type Casting
