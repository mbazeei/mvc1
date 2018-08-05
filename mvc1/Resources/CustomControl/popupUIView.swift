//
//  popupUIView.swift
//  mvc1
//
//  Created by SDB Mobile Team on 8/2/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

class popupUIView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 8
    }

}
