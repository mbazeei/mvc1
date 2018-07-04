//
//  UIViewExtension.swift
//  mvc1
//
//  Created by SDB Mobile Team on 7/3/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

extension UIView {

    func AddShadowAndRoundedCorner(){
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 5
    }

}
