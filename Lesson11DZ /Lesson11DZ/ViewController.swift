//
//  ViewController.swift
//  Lesson11DZ
//
//  Created by User on 22.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        for value in buttons {
            value.layer.cornerRadius = value.frame.size.width / 2.1
        }
        button.layer.cornerRadius = button.frame.size.width / 4.5

    }


}

