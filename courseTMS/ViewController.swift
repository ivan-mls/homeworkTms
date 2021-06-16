//
//  ViewController.swift
//  courseTMS
//
//  Created by User on 16.06.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
       // Д/3 Урок 2
//        ЗАДАНИЕ №1
    
        var a = 2.5
        var b = 9.7
        var c = 6.9
        var d = 8.2

        let sum = Int(a) + Int(b) + Int(c) + Int(d)
        print("Сумма целых частей - \(sum)")

        let mult = Int(a) * Int(b) * Int(c) * Int(d)
        print("Произведение целых частей - \(mult)")

        a = (2.5 - 2) * 10
        b = (9.7 - 9) * 10
        c = (6.9 - 6) * 10
        d = (8.2 - 8) * 10
        
        print()

        let sum2 = Float(a + b + c + d)
        let x = Int(sum2)
        print("Сумма дробных частей - \(x)")
        

        let mult2 = Float(a * b * c * d)
        let y = Int(mult2)
        print("Произведение дробных частей - \(y)")
        
        print()
        
//        ЗАДАНИЕ №2

        let number = 24

        if (number % 2 == 0) {
            print("\(number) - Четное число!")
        } else {
            print("\(number) - Нечетное число!")
        }
        
        
    }

}

