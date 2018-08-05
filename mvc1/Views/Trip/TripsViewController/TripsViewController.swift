//
//  TripsViewController.swift
//  mvc1
//
//  Created by SDB Mobile Team on 7/3/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnAddRecord: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self 
        
        TripFunctions.Read(completion: { [weak self] in
            self?.tableView.reloadData()
        })
        
        SetupViewController()
    }
    
    private func SetupViewController(){
        btnAddRecord.FloatingActionButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddTripSegue" {
            let popup = segue.destination as! AddTripViewController
            popup.doneSaving = { [weak self] in 
                self?.tableView.reloadData()
            }
        }
    }
}

extension TripsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StoreData.tripsModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TripTableViewCell
        
        cell.SetupRow(tripObject: StoreData.tripsModels[indexPath.row])
        
        return cell
    }
}

extension TripsViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
