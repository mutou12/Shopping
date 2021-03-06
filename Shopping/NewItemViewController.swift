//
//  NewItemViewController.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/2.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

protocol NewItemViewControllerDelegate {
    func addNewItem(controller: NewItemViewController, item:Item)
}

class NewItemViewController: UIViewController {

    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var brandNameTextField: UITextField!
    
    var item:Item?
    
    var delegate: NewItemViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveItem(_ sender: UIButton) {
        if itemNameTextField.text != nil && brandNameTextField.text != nil {
            item = Item(itemName: itemNameTextField.text!, brandName: brandNameTextField.text!)
        }
        delegate?.addNewItem(controller: self, item: item!)
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
