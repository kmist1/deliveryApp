//
//  ViewController.swift
//  deliveryApp
//
//  Created by Krunal Mistry on 1/25/21.
//  Copyright © 2021 Apolis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell: RestaurantDetailCell? = tableView.dequeueReusableCell(withIdentifier: "RestaurantDetailCell") as? RestaurantDetailCell
        
        customCell?.restaurantNameLable.text = "Burger King"
        
        return customCell ?? UITableViewCell()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

