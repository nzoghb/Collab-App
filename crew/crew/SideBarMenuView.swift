//
//  SideBarMenuView.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 4/28/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class SideBarMenuView: UITableViewController {

//    @IBOutlet var profilePicture: UIImageView!
    
    let greyBlue = UIColor(red: 70/255, green: 140/255, blue: 200/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        profilePicture.image = UIImage(named: "Headshot")
        
        self.view.backgroundColor = greyBlue
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        return 8 // Please change its according to you
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?{
        let view = UIView(frame: CGRectMake(0, 0, tableView.bounds.size.width, 70))
        view.backgroundColor = UIColor.clearColor()
        
        let profileImageView = UIImageView(frame: CGRectMake(30, 40, 100, 100))
        profileImageView.image = UIImage(named: "Headshot")
        profileImageView.layer.cornerRadius = profileImageView.bounds.size.width/2
        profileImageView.clipsToBounds = true
        view.addSubview(profileImageView)
        
        let usernameLabel = UILabel(frame: CGRect(x: 140, y: 60, width: 100, height: 50))
        usernameLabel.text = "Maaz Uddin"
        view.addSubview(usernameLabel)
        
        return view
    }
    
//    Added profile pic and username to sidebar menu. Need to start on views for other things from menu
    
}
