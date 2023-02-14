//
//  ViewController.swift
//  UIResponderLesson2
//
//  Created by Egor Kruglov on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let resposiveLabel = ResposiveView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resposiveLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        resposiveLabel.center = self.view.center
        
        resposiveLabel.backgroundColor = UIColor(red: 1.0/255.0, green: 121.0/255.0, blue: 190.0/255.0, alpha: 1.0)
        resposiveLabel.text = "Responsive Label"
        resposiveLabel.layer.cornerRadius = 4
        resposiveLabel.layer.masksToBounds = true
        
        self.view.addSubview(resposiveLabel)
        
        resposiveLabel.isUserInteractionEnabled = true
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longPressHandler))
        longPressRecognizer.minimumPressDuration = 0.2
        resposiveLabel.addGestureRecognizer(longPressRecognizer)
    }
    
    @objc func longPressHandler() {
        resposiveLabel.becomeFirstResponder()
        
        let menu = UIMenuController()
        menu.arrowDirection = .default
        menu.setTargetRect(resposiveLabel.frame, in: self.view)
        menu.setMenuVisible(true, animated: true)
        
        let saveMenuItem = UIMenuItem(title: "Save", action: #selector(saveClicked))
        menu.menuItems = [saveMenuItem]
    }
    
    @objc func saveClicked() {
        resposiveLabel.resignFirstResponder()
        print("Saved")
    }
    
}
