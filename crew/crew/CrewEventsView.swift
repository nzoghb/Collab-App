//
//  CrewView.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class CrewEventsView: UIViewController {

    @IBOutlet weak var Menu: UIBarButtonItem!
    @IBOutlet weak var SearchEventsButton: UIBarButtonItem!
    @IBOutlet weak var NavigationBar: UINavigationBar!
    @IBOutlet weak var TableView: UITableView!
    
    let greyBlue = UIColor(red: 70/255, green: 140/255, blue: 200/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        NavigationBar.barStyle = UIBarStyle.Black
        NavigationBar.tintColor = UIColor.whiteColor()
        
        self.view.backgroundColor = greyBlue
        
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//
    
}