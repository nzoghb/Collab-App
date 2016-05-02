//
//  EventItemViewController.swift
//  crew
//
//  Created by Nicolas Zoghb and Maaz Uddin on 4/28/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class EventItemViewController: UIViewController {
    

    @IBOutlet var title1: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var desc: UILabel!
    
    let screenSize: CGRect = UIScreen.mainScreen().bounds
//    let screenWidth = screenSize.width
//    let screenHeight = screenSize.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImageView(frame: CGRectMake(screenSize.width/2 - 100, 100, 200, 200))
        image.image = event.image
        view.addSubview(image)
        
//        image.image = event.image
        title1.text = event.heading
        date.text = event.date
        desc.text = event.desc
        
        // Do any additional setup after loading the view.
    }
    
    var event: EventItem = EventItem()

    @IBAction override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
