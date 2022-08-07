/* Closures */
/* Cleaner syntax for functions */

import Security

func greetPerson (name: String ) {
    print("Hi \(name)")
}
greetPerson(name: "Nusaiba")

var greetPersonClosure = { (name: String) -> Void in
    print("Hi \(name) with closure")
}
greetPersonClosure("Nusaiba")

/* Closure Shorthand */
var players = ["Diana", "Annie", "Beth", "Charli"]

// sort players alphabetically, but keep
// team captain as first

func teamCaptainSorter(name1: String, name2: String) ->  Bool {
    if name1 == "Beth" {
        return true
    } else if name2 == "Beth" {
        return false
    }
    return name1 < name2
}

// sorted's "by" optional param (sorting rules) and
// returns Bool based on rules

var teamBethCaptainSorterPlayers = players.sorted(by: teamCaptainSorter)

// purpose = if one arugument, use {} instead of )} basically (I think)
// and the $0, $1 are the argument indexes for ease when appropriate
// with closure and shorthand syntax
var teamCaptainBethClosre = players.sorted {
    if $0 == "Beth" {
        return true
    } else if $1 == "Beth" {
        return false
    }
    return $0 < $1
}

/* Functions into functions */
func recipeStepsOutput(openingLine: String, recipeSteps: () -> Void) {
    print(openingLine)
    recipeSteps()
    print("Good luck with you recipe!")
}

let firstStep = "Wash hands"
let omeletteSteps = {
    print("Break eggs")
    print("Put in skillet")
    print("Flip eggs")
}

recipeStepsOutput(openingLine: firstStep, recipeSteps: omeletteSteps)

//prints
//Wash hands
//Break eggs
//Put in skillet
//Flip eggs
//Good luck with you recipe!


