//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Onur Şahin on 6.01.2025.
//

import Foundation

let classJames = MusicianClass(name: "James", age: 50, instrument: "Guitar")
//print(classJames.age)

var structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")
//print(structJames.age)

//IMMUTABLE STRUCT

classJames.age = 51
//print(classJames.age)

structJames.age = 51
//print(structJames.age)

//REFERENCE vs VALUE

let copyOfClassJames = classJames
var copyOfStructJames = structJames

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

copyOfClassJames.age = 52
copyOfStructJames.age = 52

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//print(classJames.age)
//print(structJames.age)

//Reference Types -> Class
//Copy -> Same object new reference -> 1 Object + 2 Reference

//Value Types -Z Struct
//Copy -> New Object -> 2 Objects


//Function vs Mutating Function
//print(classJames.age)
classJames.happyBirthday()
//print(classJames.age)

//print(structJames.age)
structJames.happyBirthday()
//print(structJames.age)

// TUPLE

let myTuple = (1,3)
//print(myTuple.0)

var myTuple2 = (1,3,5)
myTuple2.2 = 10
//print(myTuple2.2)

var myTuple3 = ("Onur", 100)
//print(myTuple3.0)

let myTuple4 = (10,[10,20,30])
//print(myTuple4.1[1])

let myString : String?

let predefinedTuple : (String, String)

predefinedTuple.0 = "Onur"
predefinedTuple.1 = "Şahin"

//print(predefinedTuple)

let newTuple = (name:"James", metallica: true)

//print(newTuple.metallica)
//print(newTuple.name)

//Guard Let vs If Let

//Guard -> Negative && Confident
//If -> Positive

let myNumber = "5"

func convertToIntegerGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else {
        return 0
    }
    return myInteger
}

func convertToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput){
        return myInteger
    } else {
        return 0
    }
}

//print(convertToIntegerIf(stringInput: myNumber))
//print(convertToIntegerGuard(stringInput: myNumber))



//Switch

let myNum = 11

//remainder

let myRemainder = myNum % 3

//print(myRemainder)

/*
if(myRemainder == 1){
    print("It's 1")
} else if(myRemainder == 2){
    print("It's 2")
} else if(myRemainder == 3){
    print("It's 3")
}
 */

/*
switch myRemainder {
case 1:
    print("It's 1")
case 2:
    print("It's 2")
case 3:
    print("It's 3")
default:
    print("None of the above")
}
*/

/*
switch myRemainder {
case 1...3:
    print("It's 1-3 range")

default:
    print("None of the above")
}
*/


//Breakpoint

var x = 5

print(x)

x += 1
print(x)
