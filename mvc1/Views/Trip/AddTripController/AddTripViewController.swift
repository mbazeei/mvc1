//
//  AddTripViewController.swift
//  mvc1
//
//  Created by SDB Mobile Team on 8/2/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {


    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var txtTrip: UITextField!
    @IBOutlet weak var lblTitle: UILabel!
    
    var doneSaving: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAdd(_ sender: Any) {
        txtTrip.rightViewMode = .never
        
        guard txtTrip.text != "" , let newTxtTrip = txtTrip.text else {
            let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
            imgView.image = #imageLiteral(resourceName: "Warning")
            imgView.contentMode = .scaleAspectFit
            txtTrip.rightView = imgView // txtTrip.leftView
            txtTrip.rightViewMode = .always
            return
        }
        
        TripFunctions.Create(tripModel: TripModel(title: newTxtTrip))
        
        if let donSave = doneSaving {
            donSave()
        }
        dismissViewController()
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        dismissViewController()
    }
    
    func dismissViewController(){
        dismiss(animated: true)
    }
}
