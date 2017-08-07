//
//  ViewController.swift
//  Animate Movement
//
//  Created by Kyle Lee on 8/6/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var black1: UIView!
    @IBOutlet weak var black2: UIView!
    @IBOutlet weak var black3: UIView!
    @IBOutlet weak var black4: UIView!
    
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var purple: UIView!
    
    func moveRight(view: UIView) {
        view.center.x += 300
    }
    
    func moveLeft(view: UIView) {
        view.center.x -= 300
    }
    
    @IBAction func onAnimateBlackTapped() {
        let duration: Double = 2.0
        UIView.animate(withDuration: duration) {
            self.moveRight(view: self.black1)
        }
        
        UIView.animate(withDuration: duration, animations: {
            self.moveRight(view: self.black2)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveLeft(view: self.black2)
                })
            }
        }
        
        let delay: Double = 1.0
        UIView.animate(withDuration: duration, delay: delay, options: .curveLinear, animations: {
            self.moveRight(view: self.black3)
        }) { (_) in
            self.moveLeft(view: self.black3)
        }
        
        UIView.animate(withDuration: duration, delay: delay, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: .curveLinear, animations: {
            self.moveRight(view: self.black4)
        }) { (_) in
//            self.moveLeft(view: self.black4)
        }
    }
    
    @IBAction func onAnimateColorTapped() {
        let duration = 2.0
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear, animations: {
            self.moveRight(view: self.red)
        }) { (_) in
            self.moveLeft(view: self.red)
        }
        
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseIn, animations: {
            self.moveRight(view: self.blue)
        }) { (_) in
            self.moveLeft(view: self.blue)
        }
        
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut, animations: {
            self.moveRight(view: self.green)
        }) { (_) in
            self.moveLeft(view: self.green)
        }
        
        UIView.animate(withDuration: duration, delay: 0, options: .autoreverse, animations: {
            self.moveRight(view: self.orange)
        }) { (_) in
            self.moveLeft(view: self.orange)
        }
        
        UIView.animate(withDuration: duration, delay: 0, options: [.repeat, .autoreverse, .curveEaseIn] , animations: {
            self.moveRight(view: self.purple)
        }) { (_) in
//            self.moveLeft(view: self.purple)
        }
    }


}












