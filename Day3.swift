var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Nusaiba")

//Not allowed heterogenous types
//var types = ["apple", 2]

var albums = Array<String>()
var shorterAlbum = [String]()

//if initial value, Swift will know itself the type
//otherwise, declare type, and typesafety will accomodate

beatles.remove(at: 2)
print(beatles)
beatles.removeAll()
print(beatles)
print(beatles.count)

var theBeatles = ["John", "Paul", "George", "Ringo"]
print(theBeatles.sorted())
print(theBeatles.contains("Nusaiba"))
print(theBeatles.reversed())
//ReversedCollection<Array<String>>(_base: ["John", "Paul", "George", "Ringo"])
//Notice it's not actually reversed.
//Keeps OG array in tact, but remembers that it will reverse when operations
//For optimization

/* Dictionaries */
var employees = ["name": "Taylor", "position": "singer"]
print(employees["name"])
/*
"Expression implicityly coerced "String?" to "Any""
 and Taylor(Optional)
because no guarentee that key exists
 */
print(employees["name", default: "No Name"])

//initialize
var fruitColor = [String: String]()
fruitColor["banana"] = "yellow"
print(fruitColor["banana"])
//override
fruitColor["banana"] = "green"
print(fruitColor["banana"])

// Can have heterogenous value types
var student = [String: Any]()
student["name"] = "Jim"
student["age"] = 14
print(student)

/* Sets */
var mySet = Set<String>()
mySet.insert("taco")
print(mySet)
print(mySet.count)
mySet.contains("taco")
mySet.insert("burger")
print(mySet.sorted())

var bools = Set([true, true, false, false, true])
//just [true, false] because trims subsequesnts if repeat

// not sorted, optimized search, unique contents
// since no order, optimized storage and search (since no order storage
// versus arrays searches iterate over entire array

/* Enums */
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Planets {
    case Mercury, Venus, Earth, Mars
}
// for fixed number of possibilities
// avoid mistakes like "Planets" = "Monday"
// or syntac errors like "Weekday" = "Monday  "
// Enums have safer, through harsher category definitions

print(Weekday.monday)

//day is already defined as Weekday type, so type specification not needed continuing on
var day = Weekday.friday
day = .tuesday
day = .wednesday


