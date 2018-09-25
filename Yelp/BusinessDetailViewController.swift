//
//  BusinessDetailViewController.swift
//  Yelp
//
//  Created by Amzad Chowdhury on 9/24/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessDetailViewController: UIViewController {
    
    @IBOutlet weak var placeImage: UIImageView!
    
    @IBOutlet weak var placeTitle: UILabel!
    @IBOutlet weak var placeAddress: UILabel!
    @IBOutlet weak var placeDistance: UILabel!
    @IBOutlet weak var placeReview: UILabel!
    @IBOutlet weak var placeRating: UIImageView!
    @IBOutlet weak var placeCost: UILabel!
    
    var business: Business?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let business = business {
            placeImage.setImageWith(business.imageURL!)
            placeTitle.text = business.name
            placeRating.image = business.ratingImage
            placeReview.text = "\(business.reviewCount!) Reviews"
            placeAddress.text = business.address
            //placeCuisine.text = business.categories
            placeDistance.text = business.distance
        }
        // Do any additional setup after loading the view.
    }
    

    

}
