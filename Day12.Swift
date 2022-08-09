/* Classes */
// same syntax as structs
/* important differences
 can inherit from parent, super override
 no memberwise initializer
 copies of classes reference same thing
 constant classes can modify it's variables
 deinitializer possible
 */

class Animal {
    var wild: Bool
    var numLegs: Int
    
    func speak() {
        print("Animal talk")
    }
    
    init(wild: Bool, numLegs: Int) {
        self.wild = wild
        self.numLegs = numLegs
    }
}

var myAnimal = Animal(wild: true, numLegs: 4)
myAnimal.speak()

class Cat: Animal {
    var name: String
    init(name: String, wild: Bool, numLegs: Int) {
        self.name = name

        super.init(wild: wild, numLegs: numLegs)
    
    }
    override func speak() {
        print("Meow")
    }
    
}

let Pico = Cat(name: "Pico", wild: false, numLegs: 4)
Pico.speak()
Pico.wild = true
print(Pico.wild)
