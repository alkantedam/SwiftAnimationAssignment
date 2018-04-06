//
//  TableViewController.swift
//  MyAnimation
//
//  Created by Alina on 4/6/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var myTableView: UITableView!
    
    private var phones: [MyPhone] =
        [MyPhone.init("iPhone 7 Plus", "800$", "A10 Fusion", "14 mgpx"),
         MyPhone.init("Samsung Galaxy S9", "1200$", "A10 Fusion", "14 mgpx"),
         MyPhone.init("Huawei Pro", "500$", "A10 Fusion", "14 mgpx")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        cellAnimation()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        
        cell.cellTitle.text = phones[indexPath.row].title
        cell.cellSubtitle.text = phones[indexPath.row].subtitle
        cell.cellType.text = phones[indexPath.row].type
        cell.cellMgp.text = phones[indexPath.row].mgp
        
        return cell
    }
    
    func cellAnimation() {
        let cells = self.myTableView.visibleCells
        var delayCounter = 0
        for cell in cells {
            cell.frame.origin.x = -(self.myTableView.bounds.width)
            UIView.animate(withDuration: 1.6, delay: 0.7 * Double(delayCounter),usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveLinear, animations: {
                    cell.frame.origin.x = 0
                }, completion: nil)
                delayCounter += 1
            }
    }


}
