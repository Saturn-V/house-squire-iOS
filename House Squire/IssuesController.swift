//
//  IssuesController.swift
//  House Squire
//
//  Created by Alex Aaron Peña on 2/2/17.
//  Copyright © 2017 Alex Aaron Peña. All rights reserved.
//

import UIKit

class IssuesController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setBackgroundColor()
        
        // Cell layout setup
        let layout = UICollectionViewFlowLayout()
        let margin: CGFloat = 20.0
        let padding: CGFloat = margin
        layout.itemSize.width = self.view.frame.width - (margin * 2)
        layout.itemSize.height = self.view.frame.height / 4
        layout.sectionInset = UIEdgeInsets(top: margin * 1.5, left: margin, bottom: margin * 3, right: margin)
        layout.minimumLineSpacing = padding
        
        self.collectionView?.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Set number of items in CollectionView
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    // Do something with the cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IssueCell", for: indexPath) as! IssueCollectionViewCell
        
        cell.cellSize = self.view.frame.size
        cell.styleCell()
        
        return cell
    }
    
    // Cell has been selected
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell Selected", indexPath)
    }
    
    func setBackgroundColor() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        gradientLayer.colors = [UIColor.init(red: 19/255, green: 106/255, blue: 138/255, alpha: 1).cgColor, UIColor.init(red: 38/255, green: 120/255, blue: 113/255, alpha: 1).cgColor]
        
        self.collectionView!.backgroundView = UIView()
        self.collectionView!.backgroundView!.layer.insertSublayer(gradientLayer, at: 0)
    }
}
