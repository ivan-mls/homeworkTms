//
//  Group.swift
//  dz5
//
//  Created by User on 1.07.21.
//

import Foundation

class Group {
    var name: String
    var journal: [Student] = []
    
    init(name: String) {
        self.name = name
    }

    
    func removeStudent(from mark: Float) {
                journal = journal.filter{$0.mark > mark}
                }
    
    func printJournal() {
        for (index, value) in journal.enumerated() {
            print("Индекс - \(index + 1)")
            value.PrettyPrinted()
        }
        
    }

}
