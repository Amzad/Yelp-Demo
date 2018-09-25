//
//  BusinessCell.swift
//  Yelp
//
//  Created by Amzad Chowdhury on 9/24/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var placeView: UIImageView!
    @IBOutlet weak var placeTitle: UILabel!
    @IBOutlet weak var placeRating: UIImageView!
    @IBOutlet weak var placeReview: UILabel!
    @IBOutlet weak var placeAddress: UILabel!
    @IBOutlet weak var placeCuisine: UILabel!
    @IBOutlet weak var placeDistance: UILabel!
    @IBOutlet weak var placeCost: UILabel!
    
    var business: Business! {
        didSet {
            placeView.setImageWith(business.imageURL!)
            placeTitle.text = business.name
            placeRating.image = business.ratingImage
            placeReview.text = "\(business.reviewCount!) Reviews"
            placeAddress.text = business.address
            placeCuisine.text = business.categories
            placeDistance.text = business.distance
            
            placeView.layer.cornerRadius = 4
            placeView.clipsToBounds = true
            
            placeTitle.preferredMaxLayoutWidth = placeTitle.frame.size.width
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //placeView.layer.cornerRadius = 4
        //placeView.clipsToBounds = true
        
        //placeTitle.preferredMaxLayoutWidth = placeTitle.frame.size.width
        
        // Unexcepted nil errors if i run the cornerradirus codes here
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
