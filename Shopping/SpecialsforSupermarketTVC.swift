//
//  SpecialsforSupermarketTVC.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/3.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

class SpecialsforSupermarketTVC: UITableViewController {

    let specialsItem = [
        Specials(name: "西梅", brand: "超达", category: .food, price: 2.8, originalPrice: 5.3, imageName: "ximei"),
        Specials(name: "iPhone 5s", brand: "Apple", category: .mobile, price: 4188, originalPrice: 4488, imageName: "iPhone5s"),
        Specials(name: "好多鱼", brand: "好丽友", category: .food, price: 11.8, originalPrice: 13.4, imageName: "haoduoyu"),
        Specials(name: "天然水", brand: "农夫山泉", category: .drink, price: 26.9, originalPrice: 32.0, imageName: "tianranshui"),
        Specials(name: "柠檬片", brand: "鲜引力", category: .food, price: 2.9, originalPrice: 3.8, imageName: "ningmengpian"),
        Specials(name: "杏仁露", brand: "露露", category: .drink, price: 15.9, originalPrice: 21.3, imageName: "xingrenlu"),
        Specials(name: "小米4", brand: "小米", category: .mobile, price: 2760, originalPrice: 3200, imageName: "xiaomi4"),
        Specials(name: "仙贝", brand: "旺旺", category: .food, price: 20.8, originalPrice: 28.2, imageName: "xianbei"),
        Specials(name: "薯片", brand: "乐事", category: .food, price: 19.9, originalPrice: 23.9, imageName: "shupian"),
        Specials(name: "瓜子", brand: "正林", category: .food, price: 22.6, originalPrice: 25.2, imageName: "guazi"),
        Specials(name: "手撕牛肉", brand: "棒棒娃", category: .food, price: 26.8, originalPrice: 31.1, imageName: "shousiniurou")
    ]

    var categorySpecials = [Int:[Specials]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        for specials in specialsItem {
            if categorySpecials[specials.category.rawValue] == nil {
                categorySpecials[specials.category.rawValue] = [specials]
            }else
            {
                categorySpecials[specials.category.rawValue]?.append(specials)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categorySpecials.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let category = Array(categorySpecials.keys)
        return (categorySpecials[category[section]]?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "SpecialsCell", for: indexPath) as! SpecialsTableViewCell
        
        let categorys = Array(categorySpecials.keys)
        let specials = categorySpecials[categorys[indexPath.section]]?[indexPath.row]
        
        cell.nameLable?.text = specials?.name
        cell.brandLable?.text = specials?.brand
        cell.imageView?.image = UIImage(named: (specials?.imageName)!)
        

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
//     MARK: - Navigation
//
//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        
        if segue.identifier == "SpecialsDetailSegue" {
            let destination: SpecialsDetailViewController =
            segue.destination as! SpecialsDetailViewController
            let indexPath:IndexPath = self.tableView.indexPathForSelectedRow!
            
            let categorys = Array(categorySpecials.keys)
            
            let specials = categorySpecials[categorys[indexPath.section]]?[indexPath.row]
            destination.specials = specials
            
        
        }
        
    }
 

}
