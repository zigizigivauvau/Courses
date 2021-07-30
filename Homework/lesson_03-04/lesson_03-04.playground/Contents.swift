import Foundation

//Lesson 3
//Problem 1

func doTheThing(plusA: Int, plusB: Int) {
    print(plusA + plusB)
}

func doTheThing(minusA: Int, minusB: Int) {
    print(minusA - minusB)
}

func doTheThing(multA: Int, multB: Int) {
    print(multA * multB)
}

func doTheThing(divA: Int, divB: Int) {
    if divB == 0 {
        print("Don't divide by 0")
    }
    print(divA / divB)
}

doTheThing(plusA: 1, plusB: 2)
doTheThing(minusA: 3, minusB: 1)
doTheThing(multA: 3, multB: 4)
doTheThing(divA: 4, divB: 2)

//Problem 2

func summOfDigits(input: Int) {
    if input < 1000 || input > 9999 {
        print("Input doesn't contain 4 digits")
    }
    var mutableInput = input
    var result: Int = 0
    while mutableInput != 0 {
        result += mutableInput % 10
        mutableInput /= 10
    }
    print(result)
}

summOfDigits(input: 1234)

//Problem 3

@discardableResult func powerInt(base: Int, power: Int) -> Double {
    let result = pow(Double(base), Double(power))
    print(result)
    return result
}

powerInt(base: 2, power: 4)

//Problem 4

func factorial(input: Int) -> Int {
    if input == 0 {
        print(1)
        return 1
    }
    
    if input < 0 {
        print("input should be a non-negative number")
        return 0
    }
    
    return input * factorial(input: input - 1)
}

func printFactorial(number: Int) {
    print(factorial(input: number))
}

printFactorial(number: 5)

//Lesson 4
//Problem 1

let data: [(Int, String)] = [
    (3, "z"), (1, "f"), (4, "a"), (12, "q"), (8, "h"), (6, "m"), (11, "t"), (5, "k"), (7, "i")
]

func performStuff(array: [(Int, String)]) -> [(Int, String)] {
    return array.map { tulip in
        (Int(powerInt(base: tulip.0, power: 2)), tulip.1)
    }.filter { tulip in
        tulip.0 % 2 == 0
    }.sorted { left, right in
        left.1 < right.1
    }
}

let lesson4Result = performStuff(array: data)
print(lesson4Result)
