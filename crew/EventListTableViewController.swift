//
//  EventListTableViewController.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 4/22/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class EventListTableViewController: UITableViewController {

    let events: [EventItem] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //append 20 different events to the list.
        
        // Do any additional setup after loading the view, typically from a nib.
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
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.events.count
    }
    
    /* On click, segue to event. */
    //    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    //
    //        let row = indexPath.row
    //        print(events[row])
    //    }
    
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {}
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("EventItemCell", forIndexPath: indexPath) as! EventItemCell
        let row = indexPath.row
        let event: EventItem = events[row]
        //        cell.heading.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        //        cell.heading.text = event.heading
        //        cell.image = event.image
        //        cell.saved = event.saved
        //        cell.date = event.date
        return cell
    }
    
    
}
