//
//  appUIButton.swift
//  mvc1
//
//  Created by SDB Mobile Team on 8/5/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

class appUIButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = Theme.TineColor
        setTitleColor(UIColor.white, for: .normal)
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
