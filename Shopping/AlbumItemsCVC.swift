//
//  AlbumItemsCVC.swift
//  Shopping
//
//  Created by hekai on 17/3/3.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PhotoCell"

class AlbumItemsCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout{

    var categoryItem:[String:[Item]]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(ItemPhotoCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
        categoryItem = ["食品":[Item(itemName: "西梅", imageName: "ximei"),
                                   Item(itemName: "好多鱼", imageName: "haoduoyu"),
                                   Item(itemName: "柠檬片", imageName: "ningmengpian"),
                                   Item(itemName: "仙贝", imageName: "xianbei"),
                                   Item(itemName: "薯片", imageName: "shupian"),
                                   Item(itemName: "瓜子", imageName: "guazi"),
                                   Item(itemName: "手撕牛肉", imageName: "shousiniurou")],
                         "手机":[Item(itemName: "iPhone 5s", imageName: "iPhone5s"),
                                   Item(itemName: "小米4", imageName: "xiaomi4")],
                         "饮料":[Item(itemName: "天然水", imageName: "tianranshui"),
                                   Item(itemName: "杏仁露", imageName: "xingrenlu")]]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categoryItem.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        var items = [Item]()
        for (index, value) in  categoryItem.enumerated() {
            if index == section{
                (_, items) = value
            }
        }
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemPhotoCollectionViewCell
        var items = [Item]()
        for (index, value) in categoryItem.enumerated() {
            if index == indexPath.section{
               (_, items) = value
            }
        }
        
        let imageName = items[indexPath.row].imageName
        
        cell.imageView.image = UIImage(named: imageName!)
        
    
    
        // Configure the cell
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 104.0, height: 104.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int)  -> UIEdgeInsets {
         return UIEdgeInsetsMake(2.0, 0.0, 2.0, 0.0)
    }
     // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
