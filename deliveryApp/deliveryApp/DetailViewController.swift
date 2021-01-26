//
//  DetailViewController.swift
//  deliveryApp
//
//  Created by Krunal Mistry on 1/26/21.
//  Copyright © 2021 Apolis. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var restaurantName: String?
    var restaurantRating: String?
    var restaurantPrepTime: String?

    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var timeTakesLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantNameLabel.text = restaurantName ?? ""
        timeTakesLabel.text = restaurantPrepTime ?? ""
        ratingLabel.text = restaurantRating ?? ""

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
