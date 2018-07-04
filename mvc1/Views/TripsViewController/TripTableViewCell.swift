//
//  TripTableViewCell.swift
//  mvc1
//
//  Created by SDB Mobile Team on 7/3/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

class TripTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewCellContent: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewCellContent.AddShadowAndRoundedCorner()
        lblTitle.textColor = Theme.FontColor
        viewCellContent.backgroundColor = Theme.BackgroundColor
    }
    
    func SetupRow(tripObject : TripModel) {
        lblTitle.text = tripObject.Title
    }

}
