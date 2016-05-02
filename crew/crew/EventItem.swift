//
//  EventItem.swift
//  crew
//
//  Created by Nicolas Zoghb and Maaz Uddin on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class EventItem: NSObject {

    /* The title of the event. */
    var heading : String!
    /* Whether the user is interested in the event. */
    var saved : Bool!
    /* The descreption of the event, as written by the host. */
    var desc : String!
    /* The event's associated date and time. */
    var date : String!
    /* The event's header picture, to advertise it. */
    
    let image = UIImage(named:"event" + String(arc4random_uniform(5) + 1) + ".jpg")!
    //    bgImage = UIImageView(image: image)
    
    /* The event's privacy setting. */
    var visibility: String!
    
    /* Set variables when creating a new event. */
    init(heading: String = "[Name of Event]", saved: Bool = true, desc: String, date: String, visibility: String) {
        self.heading = heading
        self.saved = saved
        self.desc = desc
        self.date = date
        self.visibility = visibility
    }
    
    override init() {
        
    }
    
}
