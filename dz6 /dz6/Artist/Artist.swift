//
//  Artist.swift
//  dz6
//
//  Created by User on 5.07.21.
//

import Foundation

class Artist {
    var name: String
    var lastName: String
    var fullName: String {
        return name + lastName
    }
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    func action()-> String {
           return "DO NOTHING"
       }
       
    func performance(perform: String) -> String {
        return "I'm " + fullName + ". I'm " + action()
    }
    
}

