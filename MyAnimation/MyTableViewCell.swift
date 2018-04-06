//
//  MyTableViewCell.swift
//  MyAnimation
//
//  Created by Alina on 4/6/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var content: UIView!
    
    @IBOutlet weak var backView: UIView!
    lazy var x = backView.center.x
    
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellSubtitle: UILabel!
    
    
    
    @IBAction func infoPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            UIView.transition(with: self.backView, duration: 0, options: UIViewAnimationOptions.transitionFlipFromRight, animations: {
                self.backView.alpha = 1
            })
            
        })
    }
    
    @IBAction func hidePressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.6, animations: {
            self.backView.center.x += 300
            self.backView.alpha = 0
            
        })
    }
    @IBOutlet weak var cellType: UILabel!
    
    
    @IBOutlet weak var cellMgp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.alpha = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
