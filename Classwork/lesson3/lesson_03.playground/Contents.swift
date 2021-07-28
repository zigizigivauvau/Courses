import Foundation

var array: [String] = ["a", "b", "c"]
let arrayOne: [String] = Array()
let arrayTwo = Array<String>()
let arrayThree: [String] = []
//array.append("d")
//array.insert("d", at: 3)
//array.remove
//array.first
//array.last

func printElmntOfArray(array: [String], index: Int) {
    if index >= 0 && index < array.count {
        print(array[index])
    } else {
        print("invalid index")
    }
}

func printName(name: String = "Vladislav") {
    print(name)
}

func printNameSurname(name: String, surname: String) {
    print("My name is \(name) \(surname)")
}

func age(age: Int) {
    if age > 0 && age <= 10 {
        print("ребёнок")
    } else if age > 10 && age <= 18 {
        print("подросток")
    } else {
        print("взрослый")
    }
}

printNameSurname(name: "Dzimka", surname: "Nevidzimka")
age(age: 34)
printName()
printName(name: "Dzimka")
