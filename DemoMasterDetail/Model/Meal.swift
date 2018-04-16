//
//  Meal.swift
//  DemoMasterDetail
//
//  Created by Vu Ngoc Cong on 4/14/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class Meal{
    var dateMeal: String
    var photoMeal: UIImage?
    
    init?(dateMeal: String, photoMeal: UIImage?) {
        self.dateMeal = dateMeal
        self.photoMeal = photoMeal
    }
}
