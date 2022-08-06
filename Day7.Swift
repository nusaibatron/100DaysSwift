/* Functions */
// The order of arguments matter
func orderArg(numFruits: Int, name: String) -> String {
    let theVal = String(numFruits) + name
    return theVal
}

print(orderArg(numFruits: 3, name: "Apple"))

// Obvious returns are avoided
func greet(name: String) -> String {
    "Yes"
}
//print(greet(name: "Cat")) //prints Yes
//NOT ALLOWED with IF-ELSE
//func greeting(name: String) -> String {
//    if name == "Jim" {
//        "Yes"
//    } else {
//        "No"
//    }
//}
//print(greeting(name: "Jim"))

/* Returning multiple values */
//Sets / Arrays for order or not (books read, high score)
//Tupe for when precisely X things (rain bool's for 7 day week)

func rainWeek() -> (monday: Bool, tuesday: Bool) {
    (true, true)
}

var thisWeekRain = rainWeek()
var pr = "This week's rain was on Monday: \(thisWeekRain.0)"
var pr2 = "This week's rain was on Tuesday: \(thisWeekRain.tuesday)"

print(pr)
print(pr2)

/*
 adding _ eliminates need for that parameter to be written out
 specified when calling function
 externally, nothing
 adding for[0] then string[00
 are just the names externally and internally
*/

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

/*
 adding for[0] then string[00
 are just the names externally and internally
*/

func printTimesTables(for internalFor: Int) {
    for i in 1...12 {
        print("\(i) x \(internalFor) is \(i * internalFor)")
    }
}

printTimesTables(for: 5)

