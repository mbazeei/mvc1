//
//  TripFunctions.swift
//  mvc1
//
//  Created by SDB Mobile Team on 7/3/18.
//  Copyright © 2018 Mohammed Team. All rights reserved.
//

import Foundation
class TripFunctions {
    
    static func Create(tripModel : TripModel){
        StoreData.tripsModels.append(tripModel)
    }
    
    static func Read(completion : @escaping () -> ()){
        
        DispatchQueue.global(qos : .userInteractive ).async {
            if StoreData.tripsModels.count == 0 {
                StoreData.tripsModels.append(TripModel(title: "C#"))
                StoreData.tripsModels.append(TripModel(title: "SQL Server"))
                StoreData.tripsModels.append(TripModel(title: "Jquery"))
                StoreData.tripsModels.append(TripModel(title: "HTML"))
            }
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    static func Update(tripModel : TripModel){
        
    }
    
    static func Delete(tripModel : TripModel){
        
    }
}
