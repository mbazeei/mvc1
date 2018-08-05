//
//  UIButtonExtension.swift
//  mvc1
//
//  Created by SDB Mobile Team on 7/4/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

extension UIButton {
    func FloatingActionButton(){
        layer.opacity = 0
        layoutIfNeeded()
        UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: [], animations: {
            self.backgroundColor = Theme.TineColor
            self.layer.cornerRadius = self.frame.height / 2
            self.layer.shadowOpacity = 0.25
            self.layer.shadowRadius = 5
            self.layer.shadowOffset = CGSize(width: 0, height: 10)
            self.layer.opacity = 1
        }, completion: nil)
    }
}
