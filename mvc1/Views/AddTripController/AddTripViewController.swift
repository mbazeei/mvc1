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
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAdd(_ sender: Any) {
        dismissViewController()
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        dismissViewController()
    }
    
    func dismissViewController(){
        dismiss(animated: true)
    }
}
