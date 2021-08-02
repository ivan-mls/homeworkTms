//
//  ViewController.swift
//  dz12
//
//  Created by User on 22.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    func getToViewController(from id: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
        currentViewController.modalPresentationStyle = .fullScreen
        currentViewController.modalTransitionStyle = .flipHorizontal
        return currentViewController
    }
    
    
    @IBAction func gameButton(_ sender: Any) {
        present(getToViewController(from: "GameViewController"), animated: true, completion: nil)
        
    }
    @IBAction func settingsButton(_ sender: Any) {
        present(getToViewController(from: "SettingsViewController"), animated: true, completion: nil)

    }
    @IBAction func resultsButton(_ sender: Any) {
        present(getToViewController(from: "ResultsViewController"), animated: true, completion: nil)

    }
    

}


