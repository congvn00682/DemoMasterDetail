//
//  DataServices.swift
//  DemoMasterDetail
//
//  Created by Vu Ngoc Cong on 4/16/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DataServices{
    
    static let shared: DataServices = DataServices()
    
    private var _meals: [Meal]?
    
    var meal: [Meal]{
        set{
            _meals = newValue
        }
        get{
            if _meals == nil {
                updateData()
            }
            return _meals ?? []
        }
    }
    
    func updateData(){
        _meals = []
        
//        let meal1 = Meal(dateMeal: "Monday, April, 16, 2018 21:35 PM", photoMeal: "http://i.imgur.com/qV5uuOz.jpg")
//        let meal2 = Meal(dateMeal: "Monday, April, 16, 2018 21:35 PM", photoMeal: "http://i.imgur.com/qV5uuOz.jpg")
//        let meal3 = Meal(dateMeal: "Monday, April, 16, 2018 21:35 PM", photoMeal: "http://i.imgur.com/qV5uuOz.jpg")
//        _meals = [meal1!, meal2!, meal3!]
    }
}
