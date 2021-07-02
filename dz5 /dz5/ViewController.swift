//
//  ViewController.swift
//  dz5
//
//  Created by User on 29.06.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
       let groupStudents = Group(name: "IOS Group")
      
        var student1 = Student  (name: "Dmitriy",
                                lastName: "Kovalev",
                                dateBorn: 1996,
                                mark: 7.1)
        var student2 = Student  (name: "Sergey",
                                lastName: "Popov",
                                dateBorn: 1995,
                                mark: 8.0)
        var student3 = Student  (name: "Kate",
                                lastName: "Kravtsova",
                                dateBorn: 1997,
                                mark: 7.4)
        var student4 = Student  (name: "Anna",
                                lastName: "Volochko",
                                dateBorn: 1995,
                                mark: 6.7)
        var student5 = Student  (name: "Evgeniy",
                                lastName: "Orlov",
                                dateBorn: 1995,
                                mark: 9.2)
        
        groupStudents.journal.append(student1)
        groupStudents.journal.append(student2)
        groupStudents.journal.append(student3)
        groupStudents.journal.append(student4)
        groupStudents.journal.append(student5)
        
      
        print("Группа до изучения классов")
        groupStudents.printJournal()
        print("Группа после изучения классов")
        Gr
    }
}
        

//        print("Information about students:")
//        print("\(student1.name) \(student1.lastName) \(student1.dateBorn) \(student1.mark)")
//        print("\(student2.name) \(student2.lastName) \(student2.dateBorn) \(student2.mark)")
//        print("\(student3.name) \(student3.lastName) \(student3.dateBorn) \(student3.mark)")
//        print("\(student4.name) \(student4.lastName) \(student4.dateBorn) \(student4.mark)")
//        print("\(student5.name) \(student5.lastName) \(student5.dateBorn) \(student5.mark)")
    
       
    
    




