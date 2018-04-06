//
//  ViewController.swift
//  MyAnimation
//
//  Created by Alina on 4/5/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myEmail: UITextField!
    
    @IBOutlet weak var myPassword: UITextField!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let lastX1 = self.view.bounds.width
        let lastX2 = -(self.view.bounds.width)
        
        animateLast(lastX1, lastX2)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.layer.cornerRadius = 5
        myButton.layer.borderWidth = 1
        myButton.layer.borderColor = UIColor.white.cgColor
        
        //myButton.layer.borderColor = UIColor.white as? CGColor
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let firstX = self.myEmail.frame.origin.x
        //let firstY = self.myEmail.frame.origin.y
        animateFirst(firstX)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateFirst(_ x: CGFloat){
        
        self.myEmail.frame.origin.x = self.view.bounds.width
        self.myPassword.frame.origin.x = -(self.view.bounds.width)
        UIView.animate(withDuration: 0.9) {
            self.myEmail.frame.origin.x = x
            self.myPassword.frame.origin.x = x
        }
        
            UIView.animate(withDuration: 4, animations: {
                self.myButton.alpha = 1
            })
        }
    func animateLast(_ x1: CGFloat,_ x2: CGFloat){
    
        UIView.animate(withDuration: 0.5) {
            self.myEmail.frame.origin.x = x1
            self.myPassword.frame.origin.x = x2
        }
        UIView.animate(withDuration: 0.5) {
            self.view.alpha = 0
        }
      
    }
    
}

