import UIKit

//Array

var myFavoriteTVSeries = ["Breaking Bad", "Prison Break", "LOST",8,true] as [Any]

//as -> casting
//any -> any object

myFavoriteTVSeries[0]
myFavoriteTVSeries[1]

var myStringArray = ["Test", "Test2", "Test3"]

myStringArray[0].uppercased()

myStringArray.last
myStringArray[myStringArray.count-1]
myStringArray.sort()

var myNumberArray = [1,2,3,4,5,6,7,8]
myNumberArray.append(8)

myNumberArray[0] = 15
myNumberArray[0]

//Set (Unordered Collection, Unique Elements)

var mySet : Set = [1,2,3,4,5,1,2]
var myStringSet :  Set = ["a","b","c","a","b","d"]
mySet.first

var myInternetArray = [1,2,3,4,5,1,2,1,3,6,5]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

var mySet1:Set=[1,2,3]
var mySet2:Set=[3,4,5]

var mySet3 = mySet1.union(mySet2)
print(mySet3)

//Dictionary
//key-value pairing

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino", "Lock, Stock" : "Guy Ritchie" , "The Dark Knight" : "Christopher Nolan"]

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["The Dark Knight"]
myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"
print(myFavoriteDirectors)

myFavoriteDirectors["Seven Samurai"] = "Akira Kurisova"
print(myFavoriteDirectors)

var myDictionary = ["Run":100, "Swim":200, "Basketball" : 300]
