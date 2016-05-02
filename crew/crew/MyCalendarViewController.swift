//
//  MyCalendarViewController.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class MyCalendarViewController: UIViewController {

    @IBOutlet var calendarImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let profileImageView = UIImageView(frame: CGRectMake(30, 40, 100, 100))
        calendarImage.image = UIImage(named: "Calendar")
        view.addSubview(calendarImage)
        
    }
    
}
