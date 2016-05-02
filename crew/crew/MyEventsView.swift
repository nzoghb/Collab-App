//
//  MyEventsView.swift
//  crew
//
//  Created by Maaz Uddin on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class MyEventsView: UIViewController, UITableViewDataSource {

    @IBOutlet weak var Menu: UIBarButtonItem!
    @IBOutlet weak var CreateNewEventButton: UIBarButtonItem!
    @IBOutlet weak var NavigationBar: UINavigationBar!
    @IBOutlet var tableView: UITableView!
    
    let greyBlue = UIColor(red: 70/255, green: 140/255, blue: 200/255, alpha: 1.0)
    
    var events: [EventItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        NavigationBar.barStyle = UIBarStyle.Black
        NavigationBar.tintColor = UIColor.whiteColor()
        
        self.view.backgroundColor = greyBlue
    }
    
    @IBAction override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
//        if segue. == "Save" {
            let sourceView: NewEventViewController = unwindSegue.sourceViewController as! NewEventViewController
            let newEvent: EventItem = sourceView.eventItemInstance!
            events.append(newEvent)
            self.tableView.reloadData()
//            tableView(tableView, events.count-1)
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    //swipe to delete (citation: http://stackoverflow.com/questions/24103069/swift-add-swipe-to-delete-tableviewcell )
    //    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    //        return true
    //    }
    //
    //    //delete cell if swiped
    //    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    //        if (editingStyle == UITableViewCellEditingStyle.Delete) {
    //            // handle delete (by removing the data from array and updating the tableview)
    //            self.events.removeObjectAtIndex(indexPath.row)
    //            tableView.reloadData()
    //        }
    //    }
    
    /* On click, segue to event. */
    //    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    //
    //        let row = indexPath.row
    //        print(events[row])
    //    }
    
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {}
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("hi")
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! EventItemCell
        let row = indexPath.row
        if events.count != 0 {
            let event: EventItem = events[row]
            print(cell.MyEventHeading.text)
            cell.MyEventHeading.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
            cell.MyEventHeading.text = event.heading
            cell.MyEventImage.image = event.image
            cell.saved = event.saved
            cell.MyEventDate.text = event.date
        }
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}
