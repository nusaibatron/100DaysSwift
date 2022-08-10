/* Optionals */
//allows for nil type
// "let if" - unwrap the optional, type check

var favoriteMovie: String? = nil
var nusaibaMovie: String? = nil
// just temporarility holds favortieMovie
// in an unwrapped observable state
if favoriteMovie != nil {
    print("There's a favortie movie here")
}
if nusaibaMovie != nil {
    print("Nusaiba move populated")
} else {
    print("Nothing")
}

nusaibaMovie = "Mean Girls"

if nusaibaMovie != nil {
    print("Nusaiba move populated")
} else {
    print("Nothing")
}

//guard keyword ensures values exisits
// guard to access the else case - so maybe 'nil'
func movieChecker () {
    guard nusaibaMovie != nil else {
        print("No movie populated")
        return
    }
    print("The movies are populated!")
}
movieChecker()

/* Nil coalescing */
//provide defaul to any variable, just in case
var listOfNames = ["Nusaiba", "Charli"]

var name = listOfNames.randomElement() ?? "Anonymous"

/* Optional Chaining */
//checks existence or compliance
//before choosing to continue action
struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

/* Optionals for Errors */

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
