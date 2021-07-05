//
//  Painter.swift
//  dz6
//
//  Created by User on 5.07.21.
//

import Foundation

class Painter: Artist {
    override var fullName: String {
        return name + " GENIUS" + lastName
    }
    override func action() -> String {
        return "Draw painter"
    }

}


