import Foundation

var myName : String?

myName?.uppercased()

var myAge = "as"

var myInteger = (Int(myAge) ?? 0) * 5

if let myNumber = Int(myAge) {
    print(myNumber * 5)
}else{
    print("Wrong Input")
}


