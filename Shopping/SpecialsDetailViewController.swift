//
//  SpecialsDetailViewController.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/3.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

class SpecialsDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var brandLable: UILabel!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var originalPriceLable: UILabel!
    
    var specials: Specials!
    
    override func viewWillAppear(_ animated: Bool) {
        if specials != nil
        {
            nameLable.text = specials?.name
            brandLable.text = specials?.brand
            priceLable.text = "\(specials.price)"
            originalPriceLable.text = "\(specials.originalPrice)"
            imageView.image = UIImage(named: (specials?.imageName)!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
