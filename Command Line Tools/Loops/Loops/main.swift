import Foundation

print("Hello, World!")
var myNumber = 1
myNumber = myNumber + 1
myNumber += 1
print(String(myNumber) )

var number = 0

//While Loop

while number <= 10 {
    print(number)
    number+=1
}

var characterAlive = true

while characterAlive == true {
    print("Character Alive")
    characterAlive=false
}


//For Loop

var myFruitArray = ["Banana", "Apple", "Orange"]

print(myFruitArray[0])

for fruit in myFruitArray{
    print(fruit)
}

var myNumbers = [10,20,30,40,50,60]

for number in myNumbers{
    var resultNumber = number/5
    print(resultNumber)
}
