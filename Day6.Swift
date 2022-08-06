/* While */
for number in 1...3 {
    print(String(number + 1))
}
//using a _ tells our brain
//the value isn't being used!
print("haters gonna ")
for _ in 1...5 {
    print("hate")
}
//One sided range
var names = ["Joe", "Jim", "Jack"]
print(names[0...])

var targetRoll = 0

while targetRoll != 20 {
    targetRoll = Int.random(in: 1...20)
    print(("You rolled a \(targetRoll)!"))
}
//for loop finite number
//while loop - found enough data, found answer
var limitNum = 5
while limitNum < 12 {
    limitNum+=1
    print(limitNum)
    if limitNum == 7 {
        break
    }
}

// if continue, Swift will stop iterating over current
// loop iteration and jump to next item in loop
let files = ["pic1.jpeg", "pic2.png", "pic3.tif"]
for f in files {
    if f.hasSuffix(".jpeg") { //first iter is //pic1.jpeg
        continue //get out of current iteration loop
    }
    print("No jpeg files here: \(f)")
}

/*FizzBuzz*/
//If it’s a multiple of 3, print “Fizz”
//If it’s a multiple of 5, print “Buzz”
//If it’s a multiple of 3 and 5, print “FizzBuzz”
//Otherwise, just print the number.

func fizzbuzzer() {
    for num in 1...100 {
        if num % 3 == 0 && num % 5 == 0 {
            print ("FizzBuzz")
            continue
        }
        else if num % 3 == 0 {
            print("Fizz")
            continue
        }
        else if num % 5 == 0 {
            print("Buzz")
            continue
        }
        else {
            print(num)
        }
    }
}

fizzbuzzer()



