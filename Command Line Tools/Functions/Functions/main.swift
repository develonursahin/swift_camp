import Foundation

func myFunction(){
    print("my function")
}
print("print")

myFunction()

func sumFunction(x:Int, y:Int)->Int{
    print(x+y)
    return x+y
}
 
let myFunctionVariable = sumFunction(x: 10, y: 30)

print(myFunctionVariable)

func logicFunction (a:Int, b: Int)->String{
    if a > b {
        return "Greater"
    } else {
        return "Less"
    }
}

let myStringVariable = logicFunction(a: 10, b: 12)

print(myStringVariable)
