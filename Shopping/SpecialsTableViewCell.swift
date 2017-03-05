//
//  SpecialsTableViewCell.swift
//  Shopping
//
//  Created by 赫凯 on 2017/3/3.
//  Copyright © 2017年 赫凯. All rights reserved.
//

import UIKit

class SpecialsTableViewCell: UITableViewCell {

    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var brandLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
