//
//  TabViewController.swift
//  House Squire
//
//  Created by Alex Aaron Peña on 2/22/17.
//  Copyright © 2017 Alex Aaron Peña. All rights reserved.
//

import Foundation
import UIKit

class TabViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var buttonTray: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    var issuesAnnoucnementsController: UIViewController!
    var newItemController: UIViewController!
    var settingsController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        issuesAnnoucnementsController = storyboard.instantiateViewController(withIdentifier: "IssuesAnnouncementsController")
        newItemController = storyboard.instantiateViewController(withIdentifier: "NewItemController")
        settingsController = storyboard.instantiateViewController(withIdentifier: "SettingsController")
        
        viewControllers = [issuesAnnoucnementsController, newItemController, settingsController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        setupButtonTray()
    }
    
    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
        
    }
    
    func setupButtonTray() {
        let height: CGFloat = 49
        buttonTray.frame = CGRect(x: 0, y: self.view.frame.height - height, width: self.view.frame.width, height: height)
        for (index, button) in buttons.enumerated() {
//            button.frame.size = CGSize(width: buttonTray.frame.width / 3, height: buttonTray.frame.width / 3)
            button.center = CGPoint(x: (buttonTray.frame.width / 3) * CGFloat(index + 1) - (button.frame.width * 1.75), y: buttonTray.frame.height / 1.75)
            print(button.center)
        }
        
        contentView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - height)
    }

}
