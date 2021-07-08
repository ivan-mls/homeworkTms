//
//  ViewController.swift
//  TmsDz7
//
//  Created by User on 8.07.21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBAction func button(_ sender: UIButton) {
        
        guard textOne.text != nil, textTwo.text != nil else {return}
        var text1 = (textOne.text! as NSString).intValue
        var text2 = (textTwo.text! as NSString).intValue
        let sum = Int(text1 + text2)
        
        if labelResult != nil {
            print(sum)
        }
        labelResult.text! = String(text1 + text2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

