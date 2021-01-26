//
//  ViewController.swift
//  deliveryApp
//
//  Created by Krunal Mistry on 1/25/21.
//  Copyright © 2021 Apolis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var restaurantNames = ["Burger King", "Dominoz", "McDonlads", "WayBack", "TacoBell", "Chipotle","Burger King", "Dominoz", "McDonlads", "WayBack", "TacoBell", "Chipotle"]
    
    var restaurantsPrepTimes = ["20-30","15-20","10-15","30-40","5-10","8-10","20-30","15-20","10-15","30-40","5-10","8-10"]
    
    var restaurantRatings = ["4.5/5","3.5/5","4/5","4.8/5","3/5","4.2/5","4.5/5","3.5/5","4/5","4.8/5","3/5","4.2/5"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let custom_cell:RestaurantDetailCell? = tableView.dequeueReusableCell(withIdentifier: "RestaurantDetailCell") as? RestaurantDetailCell
        custom_cell?.restaurantNameLable.text  = restaurantNames[indexPath.row]
        custom_cell?.timeTakes.text = restaurantsPrepTimes[indexPath.row]
        custom_cell?.rating.text = restaurantRatings[indexPath.row]
        return custom_cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(" You have selected ---> \(indexPath.row)")
        
        let detailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        detailsVC?.restaurantName = restaurantNames[indexPath.row]
        detailsVC?.restaurantRating = restaurantRatings[indexPath.row]
        detailsVC?.restaurantPrepTime = restaurantsPrepTimes[indexPath.row]
        self.navigationController?.pushViewController(detailsVC!, animated: true)
        
    }

}

