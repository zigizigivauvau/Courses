//
//  ViewController.swift
//  lesson_04
//
//  Created by zigizigivauvau on 28.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    var items: [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        items.append("a")
        items.append("b")
        items.append("c")
        
        for item in items {
            print(item)
        }
        
        for index in 0..<items.count {
            print(items[index])
        }
        
        var n = 0
        while n < 3 {
            print(n)
            n += 1
        }
        
        let digits = [1, 2, 3, 6, 12, 20]
        let formattedDigits = printDigitsGreaterNumberThanTen(digits: digits)
        print(formattedDigits)
        
        digits.filter { (digit) -> Bool in
            if digit > 10 {
                return true
            } else {
                return false
            }
        }
        let strings = ["a", "b", "c", "d"]
        let filteredStrings = strings.filter { string -> Bool in
            if string >= "b" {
                return true
            } else {
                return false
            }
        }
    }
    

    @discardableResult func printName(name: String, surname: String) -> String {
        let nameAndSurname = name + " " + surname
        return nameAndSurname
    }
    
    func calculate(x: Double, y: Double, op: String) -> Double {
        var result: Double = 0
        switch op {
        case "+":
            result = x + y
        case "-":
            result = x - y
        case "*":
            result = x * y
        case "/":
            result = x / y
            
        default:
            break
        }
        
        return result
    }
    
    func printDigitsGreaterNumberThanTen(digits: [Int]) -> [Int] {
        var resultDigits: [Int] = []
        
        for digit in digits {
            if digit > 10 {
                resultDigits.append(digit)
            }
        }
        return resultDigits
    }
    
    func printDigits(digits: [Int]) -> [Int] {
        var resultDigits: [Int] = [Int]()
        
        for digit in digits {
            if digit > 10 {
                resultDigits.append(digit)
            }
        }
        return resultDigits
    }
    
    func printCarModelYear () {
        var carModelYear: [(car: String, model: String, year: Int)] = [
            ("Audi", "A8", 2010),
            ("Geely", "Emgrand 7", 2020)
        ]
        
        // sorting
        let sortedCarModelYear = carModelYear.sorted { previousElement, nextElement
            in
            return previousElement.year < nextElement.year
        }
        
        printName(name: "Nasta", surname: "Mas")
        let nameAndSurname = printName(name: "Nasta", surname: "Mas")
        print(nameAndSurname)
    }

}

