//
//  TripModel.swift
//  mvc1
//
//  Created by SDB Mobile Team on 7/3/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import Foundation
class TripModel {
    var Id : String!
    var Title : String!
    
    init(title : String) {
        self.Id = UUID().uuidString
        self.Title = title
    }
}
