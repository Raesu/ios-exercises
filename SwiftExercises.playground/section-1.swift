import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is " + cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
// changed let to var. was it supposed to originally be var? Unclear how its asking to work below these lines only
numberArray = numberArray + [5]

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"

numberDictionary


/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for x in 1...10 {
    x
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
// May have mixed up the half-closed v. closed loop syntax
for var i = 1; i <= 10; i++ {
    i
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

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var drinkArray : Array<String>
    
    for char in characters {
        drinkArray = drinkArray + [char["favorite drink"]]
    }
    
    // WORK HERE
    return drinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func stringsFromArray(groceries:Array<String>) -> String {
    var s : String
    for item in groceries {
        s += item + ";"
    }
    // tried to remove last ";" with s[:-1], somthing like that is available in Python
    return s
}

// WORK HERE - make your function and pass `strings` in
let actualOutput = stringsFromArray(strings)
actualOutput

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

let sortedCerealArray = sorted(cerealArray, >)
sortedCerealArray



