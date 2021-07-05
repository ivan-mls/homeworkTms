//
//  ViewController.swift
//  dz6
//
//  Created by User on 5.07.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        var artists = [Artist]()
        
        artists += [Dancer(name: "Jon", lastName: "Snow")]
        artists += [Singer(name: "Ava", lastName: "Max")]
        artists += [Painter(name: "Picaso", lastName: "")]
        
        for actor in artists {
            print(actor.performance(perform: ""))
        }
        
        
        
        
    }


}

//let dancer = Dancer.init(name: "Jon", lastName: "FLY")
//dancer.performance(perform: "DANCE")
//let singer = Singer.init(name: "Ava", lastName: "Max")
//singer.performance(perform: "SING")
//let painter = Painter.init(name: "Chris", lastName: "Daymon")
//painter.performance(perform: "PAINT")
