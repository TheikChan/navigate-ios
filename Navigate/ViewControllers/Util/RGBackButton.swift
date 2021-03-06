//
//  RGBackButton.swift
//  Navigate
//
//  Created by Răzvan-Gabriel Geangu on 19/03/2018.
//  Copyright © 2018 Răzvan-Gabriel Geangu. All rights reserved.
//

import UIKit

class RGBackButton: UIView {
    private var backButton: UIButton!
    private var containerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addShadow()
        addRoundCorners()
        addBlurBackground()
        addBackButton()
        
        self.addSubview(containerView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**
     A function that adds the target to the back button.
     */
    func addTarget(_ target: Any?, action: Selector, for controlEvent: UIControlEvents) {
        backButton.addTarget(target, action: action, for: controlEvent)
    }
    
    /**
     A function to add shadow to the main view.
     */
    fileprivate func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.5, height: 2)
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 5.0
    }
    
    /**
     A function to add round corners to the container view.
     */
    fileprivate func addRoundCorners() {
        self.containerView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.containerView.layer.cornerRadius = 20
        self.containerView.layer.masksToBounds = true
    }
    
    /**
     A function that creates a blurred background and adds it to the container view.
     */
    fileprivate func addBlurBackground() {
        let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        blurEffectView.frame = self.bounds
        blurEffectView.isUserInteractionEnabled = false
        self.containerView.insertSubview(blurEffectView, at: 0)
    }
    
    /**
     A function to add a back button to the container view.
     */
    fileprivate func addBackButton() {
        backButton = UIButton(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        backButton.setTitle("X", for: .normal)
        backButton.titleLabel?.font = backButton.titleLabel?.font.withSize(18)
        self.containerView.addSubview(backButton)
    }
}
