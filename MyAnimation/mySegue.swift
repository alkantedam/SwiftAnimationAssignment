//
//  mySegue.swift
//  MyAnimation
//
//  Created by Alina on 4/5/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class mySegue: UIStoryboardSegue {
    override func perform() {
        let source = self.source
        let destination = self.destination
        let containerView = source.view.superview
        let originalCenter = source.view.center
        destination.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        destination.view.center = originalCenter
        containerView?.addSubview(destination.view)
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            destination.view.transform = CGAffineTransform.identity
        }) { (true) in
            self.source.present(destination, animated: false, completion: nil)
        }
        
        
    }
    
    
    

}
