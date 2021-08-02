//
//  RootViewController.swift
//  dz12
//
//  Created by User on 1.08.21.
//

import UIKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {

    enum directionCheckers: Int {
        case white = 0
        case black = 1
    }
    
    @IBOutlet weak var timerLabel: UILabel!

    var chessboard: UIView!
    var timer: Timer?
    var tikTak: Int = 0
    var isLongPress: Bool = false
    var currentDirection: directionCheckers = .white
    var stepCount: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createChessBoard()
        
        timer = Timer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        RunLoop.main.add(timer!, forMode: .common)
        
        timerLabel.layer.cornerRadius = timerLabel.frame.size.width / 2
        
        
    }
    
    func createChessBoard() {
        chessboard = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 320, height: 320)))
        chessboard.backgroundColor = .white
        
        for i in 0..<8 {
            for j in 0..<8 {
                let column = UIView(frame: CGRect(x: 40 * i, y: 40 * j, width: 40, height: 40))
                column.backgroundColor = ((i + j) % 2 ) == 0 ? .white: .black
                chessboard.addSubview(column)
                
                guard j < 3 || j > 4, column.backgroundColor == .black else {continue}
                
                let checker = UIImageView(frame: CGRect(x: 5, y: 5, width: 30, height: 30))
                if j > 4 {
                    checker.image = .init(named: "android_logo")
                }
                if j < 3 {
                    checker.image = .init(named: "apple_white")
                }
                
                checker.layer.cornerRadius = checker.bounds.size.width / 2.0
                column.addSubview(checker)
                checker.tag = j < 3 ? 0 : 1
                checker.isUserInteractionEnabled = true
                
                let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longGesture(_:)))
                longGesture.minimumPressDuration = 0.3
                longGesture.delegate = self
                checker.addGestureRecognizer(longGesture)
        
                checker.isUserInteractionEnabled = true
                
                let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
                checker.addGestureRecognizer(panGesture)
                
                

            }
        }
        
        view.addSubview(chessboard)
        chessboard.center = view.center
        
    }
    
        @objc func longGesture(_ sender: UILongPressGestureRecognizer) {
            guard let checker = sender.view else { return }
            isLongPress = true
            switch sender.state {
            case .began:
                UIImageView.animate(withDuration: 0.3) {
                    sender.view?.transform = checker.transform.scaledBy(x: 1.3, y: 1.3)
                }
            case .ended:
                UIImageView.animate(withDuration: 0.3) {
                    sender.view?.transform = .identity
                }
            default:
                break
            }
        }
  
    
    @objc
        func panGesture(_ sender: UIPanGestureRecognizer) {
            
        let location = sender.location(in: chessboard)
        let translation = sender.translation(in: chessboard)
        guard let checker = sender.view, checker.tag == currentDirection.rawValue else {return}
            
        
        switch sender.state {
        case .changed:
            guard let column = sender.view?.superview, let cellOrigin = sender.view?.frame.origin else {return}
            chessboard.bringSubviewToFront(column)
            sender.view?.frame.origin = CGPoint(x: cellOrigin.x + translation.x,
                                                y: cellOrigin.y + translation.y)
            sender.setTranslation(.zero, in: chessboard)
        case .ended:
            let currentCell = chessboard.subviews.first(where: {$0.frame.contains(location) && $0.backgroundColor == .black})
            
            sender.view?.frame.origin = CGPoint(x: 5, y: 5)
            guard let newCell = currentCell, newCell.subviews.isEmpty, let cell = sender.view else {return }
            currentCell?.addSubview(cell)
            
            currentDirection = currentDirection == .white ? .black : .white
            
        default: break
        }
            
    
            
        func getToViewController(from id: String) -> UIViewController {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
            currentViewController.modalPresentationStyle = .fullScreen
            currentViewController.modalTransitionStyle = .flipHorizontal
            return currentViewController
            }
        }
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
        dismiss(animated: true, completion: nil)
    }
    
    @objc func timerFunc() {
        tikTak += 1
        timerLabel.text = "\(tikTak)"
    }
 
    }

