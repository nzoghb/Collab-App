//
//  MyEventsView.swift
//  crew
//
//  Created by Maaz Uddin on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class MyEventsView: UIViewController {

    @IBOutlet weak var Menu: UIBarButtonItem!
    @IBOutlet weak var CreateNewEventButton: UIBarButtonItem!
    @IBOutlet weak var NavigationBar: UINavigationBar!
    @IBOutlet weak var TableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        NavigationBar.barStyle = UIBarStyle.Black
        NavigationBar.tintColor = UIColor.whiteColor()
        
        self.view.backgroundColor = UIColor.grayColor()
    }
    
}
