/* Structs Part 1*/

struct Employee {
    var ID: String
    var name: String
    var remainingVacationDays = 20
    
    // struct have their own "init" that simply creates
    // the var's available,
    // but adding init takes away the internal init
    // all vars must be addressed in the init
    init(name: String) {
        self.name = name.uppercased()
        self.ID = name + "1234"
    }
    
    // any function that modified self's properties
    // needs the self keyword
    mutating func takeVacation(days: Int) {
        self.remainingVacationDays -= days
    }
    
}

var Nusaiba = Employee(name: "Nusaiba")
Nusaiba.takeVacation(days: 5)
print(Nusaiba.remainingVacationDays)

//getter and setter methods come with swift

struct Account {
    
    var accountMoney = 0
    
    var money: Int {
        get {
            accountMoney
        }
        set {
            // there are built in newValue
            // and oldValue variables
            accountMoney = newValue
        }
    }
    
}

var myAccount = Account()
print(myAccount.money)
myAccount.money = 30
print(myAccount.money)

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
print(app.contacts)
app.contacts.append("Adrian E")
print(app.contacts)
app.contacts.append("Allen W")
app.contacts.append("Ish S")
