import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return "My favorite cheese is \(cheese)."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
let newArray = numberArray + [5]

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var mutableDict = numberDictionary
mutableDict[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1 ... 10 {
    print(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1 ..< 11 {
    print(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var rv = [String]()
    for character in characters {
        for (label, value) in character{
            if label == "favorite drink"{
                rv += [value]
            }
        }

    }
    return rv
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    if let unwrappedEmail = userDict["email"]{
        return unwrappedEmail
    } else {
        return ""
    }
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]
func semiColoner(input : NSArray) -> String {
    var rv = ""
    for inp in input{
        rv += (inp as! String + ";")
    }
    return rv
}

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let sortedArray = cerealArray.sort( {(cereal1, cereal2) in cereal1 > cereal2})
print(sortedArray)
