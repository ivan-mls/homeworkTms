//
//  Student.swift
//  dz5
//
//  Created by User on 29.06.21.
//

import Foundation

class Student {
    let name: String
    let lastName: String
    let dateBorn : Int
    let mark: Float
    
    init(name: String, lastName: String, dateBorn: Int, mark: Float) {
        self.name = name
        self.lastName = lastName
        self.dateBorn = dateBorn
        self.mark = mark
    }
    
    func PrettyPrinted() {
        print("Студент группы - \(name)")
        print("Имя: \(name)")
        print("Фамилия: \(lastName)")
        print("Год рождения: \(dateBorn)")
        print("Средний балл: \(mark) ")
        print()
        }

    
}
