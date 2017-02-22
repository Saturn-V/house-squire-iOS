//
//  IssuesController.swift
//  House Squire
//
//  Created by Alex Aaron Peña on 2/2/17.
//  Copyright © 2017 Alex Aaron Peña. All rights reserved.
//

import UIKit

class IssuesController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

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
        
        cell.style()
        
        return cell
    }
    
    // Cell has been selected
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell Selected", indexPath)
        let cell = collectionView.cellForItem(at: indexPath) as! IssueCollectionViewCell
        
//        cell.superview?.bringSubview(toFront: cell)
//        
//        
//        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
//            cell.frame = self.collectionView!.bounds
//            
//            // Animates corner radius of cell
//            let cornerAnimation = CABasicAnimation(keyPath: "cornerRadius")
//            cornerAnimation.fromValue = cell.layer.cornerRadius
//            cornerAnimation.toValue = 0
//            cornerAnimation.duration = 1.5
//            cornerAnimation.fillMode = kCAFillModeForwards
//            cornerAnimation.isRemovedOnCompletion = false
//            cell.layer.add(cornerAnimation, forKey: "cornerRadius")
            
//            let borderAnimation = CABasicAnimation(keyPath: ")
//            let backButton = cell.viewWithTag(1) as! UIButton
//            backButton.isHidden = false
//            backButton.addTarget(self, action: #selector(IssuesController.backButtonAction), for: UIControlEvents.touchUpInside)
//                
//            self.collectionView?.isScrollEnabled = false
//            self.collectionView?.allowsMultipleSelection = false
//            
//        }, completion: nil)
        
//        self.collectionView?.reloadItems(at: [indexPath])
    }
    
    func setBackgroundColor() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        gradientLayer.colors = [UIColor.init(red: 48/255, green: 207/255, blue: 208/255, alpha: 1).cgColor, UIColor.init(red: 51/255, green: 8/255, blue: 103/255, alpha: 1).cgColor]
        
        self.collectionView!.backgroundView = UIView()
        self.collectionView!.backgroundView!.layer.insertSublayer(gradientLayer, at: 0)
    }
//
//    func backButtonAction() {
//        let indexPath = self.collectionView?.indexPathsForSelectedItems
//        self.collectionView?.isScrollEnabled = true
//        self.collectionView?.reloadItems(at: indexPath!)
//    }
}
