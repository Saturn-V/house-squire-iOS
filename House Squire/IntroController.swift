//
//  IntroController.swift
//  House Squire
//
//  Created by Alex Aaron Peña on 2/2/17.
//  Copyright © 2017 Alex Aaron Peña. All rights reserved.
//

import Foundation
import UIKit

class IntroController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func button() {
        let controllerView = self.view
        let padding: CGFloat = 20
        let buttonFrame = CGRect(x: padding, y: padding, width: 50, height: 50)
        let buttonView = UIView(frame: buttonFrame)
        
        buttonView.backgroundColor = UIColor.cyan
        buttonView.layer.cornerRadius = buttonView.frame.width / 2
        buttonView.center.x = (controllerView?.center.x)!
        buttonView.center.y = (controllerView?.frame.height)! + 100
        
        UIView.animate(withDuration: 2) {
            buttonView.center.x = (controllerView?.center.x)!
            buttonView.center.y = (controllerView?.center.y)! * 1.5
        }
        
        UIView.animate(withDuration: 1, delay: 2, options: [], animations: {
            let scale = CGAffineTransform(scaleX: 2, y: 2)
            buttonView.transform = scale
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 4, options: [], animations: {
            buttonView.layer.cornerRadius = 10
        }, completion: nil)
        
        
        
        controllerView?.addSubview(buttonView)
    }
}

