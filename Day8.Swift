/* Default parameters */
func timesTable(forr: Int, end: Int = 10) -> Void {
    for num in forr...end {
        print("This is the \(num) times table.")
    }
}
timesTable(forr: 4)

var myChars = ["Lucy", "Anna", "Gina"]
//this takes away all memory space of array
//there are actually default falses
myChars.removeAll()
var myChars2 = ["Lucy", "Anna", "Gina"]
//but if you wanted to keep that space in memory
myChars2.removeAll(keepingCapacity: true
)


/* Error Handling */

// "Error" type needs to be in enum
enum PasswordErrors: Error {case short, obvious}

func checkPassword(_ password: String) throws -> String {
    
    if password.count < 5 {
        throw PasswordErrors.short
    }
    if password == "1234567" {
        throw PasswordErrors.obvious
    }
    
    if password.count > 8 { return "Great"}
    else {return "Awesome password"}
    
}

do {
    let result = try checkPassword("1234567")
    print(result)
} catch PasswordErrors.obvious {
    print("An Error Occurred - Too Short")
}

enum BookErrors: Error {
    case tooFewPages
    case tooManyPages
}
func writeBook(title: String, _ pages: Int) throws {
    switch pages {
    case 0...50: //syntax - sees if "pages" IN THIS RANGE
        print(pages)
        throw BookErrors.tooFewPages
    case 51...400: //sees if "pages" IN THIS RANGE
        //when pages = 80
        print(pages)
        print("Perfect! I'm going to write \(title)...")
    default:
        print(pages)

        throw BookErrors.tooManyPages
    }
}

writeBook(title: "Hunger Games", 80)

