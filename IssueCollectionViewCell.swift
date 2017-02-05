//
//  IssueCollectionViewCell.swift
//  House Squire
//
//  Created by Alex Aaron Peña on 2/4/17.
//  Copyright © 2017 Alex Aaron Peña. All rights reserved.
//

import Foundation
import UIKit

class IssueCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var issueUserImage: UIImageView!
    var cellSize: CGSize!
    
    func styleCell() {
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 10
        
        // Setting left border color
        let l = CALayer()
        l.frame = CGRect(x: 0, y: 0, width: 7.5, height: self.frame.height)
        l.backgroundColor = UIColor.black.cgColor
        self.layer.addSublayer(l)
        
        // Image Styles
        issueUserImage.frame = CGRect(x: 30, y: 20, width: 50, height: 50)
        issueUserImage.layer.cornerRadius = issueUserImage.frame.width / 2
    }
}
