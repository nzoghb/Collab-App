//
//  MyProfileViewController.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {

    override func viewDidLoad() {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let profileImageView = UIImageView(frame: CGRectMake(screenWidth/2 - 100, 100, 200, 200))
        profileImageView.image = UIImage(named: "Headshot")
        profileImageView.layer.cornerRadius = profileImageView.bounds.size.width/2
        profileImageView.clipsToBounds = true
        view.addSubview(profileImageView)
    }
    
    
}
