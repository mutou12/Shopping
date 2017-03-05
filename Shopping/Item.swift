//
//  Item.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/2.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import Foundation

class Item {
    
    var itemName: String = ""
    var brandName: String = ""
    var isBuy: Bool = false
    var imageName: String!
    
    
    //指定构造器
    init(itemName: String, brandName: String, isBuy: Bool, imageName: String) {
        self.itemName = itemName
        self.brandName = brandName
        self.isBuy = isBuy
        self.imageName = imageName
    }
    
    //便利构造器
    convenience init(itemName: String){
        self.init(itemName: itemName, brandName: "", isBuy: false, imageName:" ")
    }
    //还是便利构造器
    convenience init(itemName: String, brandName: String){
        self.init(itemName: itemName, brandName: brandName, isBuy: false, imageName:" ")
    }
    //还是便利构造器
    convenience init(itemName: String, imageName: String){
        self.init(itemName: itemName, brandName: "", isBuy: false, imageName:imageName)
    }

    //Item的，描述方法,返回类信息
    func description() -> String {
        return "itemName:\(itemName) brandName:\(brandName) isBuy:\(isBuy) imageName:\(imageName)"
    }

}
