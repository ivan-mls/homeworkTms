//
//  ViewController.swift
//  dz3
//
//  Created by User on 26.06.21.
//

import UIKit

typealias workerInfo = (name: String, age: Int, sallary: Float )


func workerSalary(where name: String, age: Int, sallary: inout Float) {

    switch age {
    case 18...30:
        print(sallary *= 1.5)
    case 30...40:
        print(sallary *= 2)
    default:
        print(sallary *= 3)
    }
    
    print("Worker name: \(name) age: \(age) sallary: \(sallary)")
}


func calculateThreeNumbers(numberOne: Int, numberTwo: Int, numberThree: Int) -> Int {
    
    Float((numberOne + numberTwo + numberThree) / 3)
    return Int(((numberOne + numberTwo + numberThree) / 3))
}


func creditCalculate(where n: Float, and y: Int, and p: Float ) {

   
    let pow = pow(p + 1, Float(y))
    let m: Float = (n * p * pow) / (12 * (pow - 1))
    let s = (m * 12) * Float(y)
    print("Сумма кредита: \(n)\nПериод (year): \(y)\nПроцент: \(p)\nЕжемесячно: \(m)\nОбщая сумма: \(s) ")
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print()
        print("================ TASK 1 ===================")
        print()
        
        var workerA: (name: String, age: Int, sallary: Float) = ("Jon", 24, 3000.42)
        var workerB: (name: String, age: Int, sallary: Float) = ("Jacob", 34, 2100.30)
        var workerC: (name: String, age: Int, sallary: Float) = ("Miranda", 42, 4000.00)
        
        workerSalary(where: workerA.name, age: workerA.age, sallary: &workerA.sallary)
        workerSalary(where: workerB.name, age: workerB.age, sallary: &workerB.sallary)
        workerSalary(where: workerC.name, age: workerC.age, sallary: &workerC.sallary)
        
        print()
        print("================ TASK 2 ===================")
        print()
        
        print(calculateThreeNumbers(numberOne: 10, numberTwo: 2, numberThree: 9))
        print(calculateThreeNumbers(numberOne: 24, numberTwo: 6, numberThree: 15))
        print(calculateThreeNumbers(numberOne: 12, numberTwo: 7, numberThree: 14))
        print(calculateThreeNumbers(numberOne: 3, numberTwo: 2, numberThree: 2))
        
        print()
        print("================ TASK 3 ===================")
        print()
        
        creditCalculate(where: 1000000, and: 1, and: 0.12)
        
        
        
        
        
        
    }


}

