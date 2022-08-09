/* Protocols */
// like an interface in Java
// state vars/funcs - signature,
// but not implement it

protocol Vehicle {
    var hasWheels: Bool { get set }
    var isSafe: Bool { get set }
    func speedLimit(city: String) -> Int
}

class Car: Vehicle {
    var model: String
    var hasWheels: Bool
    var isSafe: Bool
    func speedLimit(city: String) -> Int {
        return 60
    }
    
    init(model: String, hasWheels: Bool, isSafe: Bool) {
        self.model = model
        self.hasWheels = hasWheels
        self.isSafe = isSafe
    }
}

/* Opaque Return types */
// hides return type from us, but
// Swift compiler still knows

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...10)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber())
print(getRandomBool())
var r = getRandomNumber()
var b = getRandomNumber()

print(r == b)

/* Extensions */
//allows for variations of objects

protocol Person {
    var name: String { get }
    func sayHello()
}
//comforming Persons CAN add their own
// sayHellos, but no need, can rely on
// protocol extension

extension Person { // kinda like a catch-all
    func sayHello() {
        print("Hola!")
    }
}




