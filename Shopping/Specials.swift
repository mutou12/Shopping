//
//  Specials.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/3.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

enum SpecialsCategory: Int {
    case food = 0, drink, clothing, stationery, mobile
}

class Specials: NSObject {

    var name:String = ""
    
    var brand: String = ""
    
    var category: SpecialsCategory!
    
    var price = 0.0
    
    var originalPrice = 0.0
    
    var imageName: String = ""
    
    init(name: String, brand:String , category: SpecialsCategory,price :Double, originalPrice:Double,imageName:String) {
        self.name = name
        self.brand = brand
        self.category = category
        self.price = price
        self.originalPrice = originalPrice
        self.imageName = imageName
    }
    
    
}
