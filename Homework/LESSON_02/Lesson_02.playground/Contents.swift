import Foundation


//Problem 1

let first: Double = 6.2
let second: Double = 2.3
let remainderFirst = first.truncatingRemainder(dividingBy: 1) * 10
let remainderSecond = second.truncatingRemainder(dividingBy: 1) * 10
let remainderSumm = remainderFirst + remainderSecond
let summ = Int(first) + Int(second)
print("\(summ) сумма целых частей, \(remainderSumm) сумма дробных частей")


//Problem 2

let number = 23

if number % 2 == 0 {
    print("\(number) is even")
} else {
    print("\(number) is odd")
}


//Problem 3

let year = 1980
if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
    print("\(year) is a leap year")
} else {
    print("\(year) is not a leap year")
}

