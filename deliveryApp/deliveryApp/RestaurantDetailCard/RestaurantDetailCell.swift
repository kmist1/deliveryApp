//
//  RestaurantDetailCell.swift
//  deliveryApp
//
//  Created by Krunal Mistry on 1/25/21.
//  Copyright © 2021 Apolis. All rights reserved.
//

import UIKit

class RestaurantDetailCell: UITableViewCell {
    
    
    @IBOutlet weak var restaurantNameLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
