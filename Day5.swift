
/*IF*/

var score = 18
if score > 10 {
    print("The score is above 10")
}
//greater/less symbols work on strings in swift

var friend1 = "Andy"
var friend2 = "Sam"
//lower number, ealier in alphabet
if friend1 > friend2 {
    print("Alphabetically, \(friend2) comes before \(friend1).")
} else {
    print("Alphabetically, \(friend2) does not come before \(friend1).")
}

var intArr = [1, 2, 3]
print(intArr)
intArr.append(4)
if intArr.count > 3 {
    intArr.remove(at: 0)
}
print(intArr)

var username = "myUser123"

//don't do this, slow becuase iterates through all
if username.count == 0 {
    username = "Anon"
}
if username.isEmpty {
    print("used if empty")
}
//or
if username == "" {
    print("empty string comparison")
}

//enums can define order!!
enum Sizes: Comparable {
    case small
    case medium
    case large
    
}
print(Sizes.large > Sizes.medium)

enum Transportation { case bike, plane, helicopter, boat}
var myTransportation = Transportation.boat
if myTransportation == .bike {
    print("Wear a helmet")
} else if (myTransportation == .plane || myTransportation == .helicopter) {
    print("Let's fly")
} else {
    print("Getting a scooter")
}
/* Switch */
//advantage of Switch is exhaustive, or else error
//must provide default, or all possible cases
//fallthrough forces next function
enum Months {
    case January, February, March, April
}
var thisMonth = Months.January
switch thisMonth {
case .January:
    print("It's cold")
    fallthrough //go to next case
case .February:
    print("It's valentine's day")
case .March:
    print("St Patrick's day")
default: //The default case is not needed if all cases covered
    //in a enum, if all bases covered, good to go
    //above, April is not accounted for
    print("hello")
}

var name = "Nusaiba"
switch name {
case "Charli": print("is you name Charli")
default: print("What's in a name?")
}

/* Ternary Operator */
//WTF - what, true, false
//Curriculum says for future - ternary operators req
//but readability!
var currTemp = 70
var isCold = currTemp > 70 ? false : true
print(isCold)



