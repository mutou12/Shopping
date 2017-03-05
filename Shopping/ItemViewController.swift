//
//  ItemViewController.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/2.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var brandNameLabel: UILabel!
    
    var item : Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        if item != nil {
            itemNameLabel.text = item?.itemName
            brandNameLabel.text = item?.brandName
        }
        
    
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func isBuy(_ sender: UIButton) {
        if item != nil {
            if item?.isBuy == false {
                item?.isBuy = true
                itemNameLabel.textColor = UIColor.green
            }
            else{
                item?.isBuy = false
                itemNameLabel.textColor = UIColor.red
            }
            
            print(item?.description())
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
