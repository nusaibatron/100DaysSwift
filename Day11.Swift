/* Static Variables */

struct Cat {
    //[Cat]() puts THIS cat in a var
    // of ALL cats
    static var allCats = [Cat]()
    var name: String
    
    init(name: String) {
        self.name = name
        Cat.allCats.append(self)
    }
    static func chorus() {
        for _ in allCats {
            print("Meow!")
        }
    }
}

var Pico = Cat(name: "Pico")
print(Cat.allCats.count)

/* Access Control */
struct BankAccount {
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var NusaibaBank = BankAccount()
print(NusaibaBank.funds)
