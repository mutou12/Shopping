//
//  ViewController.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/2.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,NewItemViewControllerDelegate{

    func addNewItem(controller: NewItemViewController, item: Item) {
        toBuyItem.append(item)
        tableView.reloadData()
        
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var toBuyItem = [Item(itemName: "牛奶", brandName: "三元"),
                     Item(itemName: "红烧牛肉面", brandName: "康师傅"),
                     Item(itemName: "桃汁", brandName: "汇源"),
                     Item(itemName: "巧克力", brandName: "德芙"),
                     Item(itemName: "地板净", brandName: "滴露"),
                     Item(itemName: "洗发水", brandName: "飘柔")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toBuyItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let item = toBuyItem[indexPath.row]
        cell.textLabel?.text = item.itemName
        cell.detailTextLabel?.text = item.brandName
        
        if item.isBuy
        {
            cell.textLabel?.textColor = UIColor.green
        }
        else
        {
            cell.textLabel?.textColor = UIColor.red
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "itemSegue", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            toBuyItem.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "itemSegue"{
            let destination :ItemViewController = segue.destination as! ItemViewController
            if sender is Int {
                let item = toBuyItem[sender as! Int]
                destination.item = item
            }
        }else if segue.identifier == "newItemSegue" {
            let destination: NewItemViewController = segue.destination as! NewItemViewController
            destination.delegate = self
        
        }

    }
    
}

