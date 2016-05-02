//
//  EventItemCell.swift
//  crew
//
//  Created by Nicolas Zoghb and Maaz Uddin on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class EventItemCell: UITableViewCell {

    @IBOutlet var MyEventImage: UIImageView!
    @IBOutlet var MyEventHeading: UILabel!
    @IBOutlet var MyEventDate: UILabel!
    
    var saved: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
