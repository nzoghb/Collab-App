//
//  MyEventsView.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class MyEventsView: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Menu: UIBarButtonItem!
    @IBOutlet weak var CreateNewEventButton: UIBarButtonItem!
    @IBOutlet weak var NavigationBar: UINavigationBar!
    @IBOutlet var tableView: UITableView!
    
    let greyBlue = UIColor(red: 70/255, green: 140/255, blue: 200/255, alpha: 1.0)
    
    var events: [EventItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
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
    
   
    
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {}
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("hi")
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! EventItemCell
//        let cell: EventItemCell = tableView.cellForRowAtIndexPath(indexPath)!
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if let cell = sender as? UITableViewCell {
            let i = tableView.indexPathForCell(cell)!.row
            if segue.identifier == "toRestaurant" {
                let vc = segue.destinationViewController as! EventItemViewController
                vc.event = events[i]
            }
        }
    }
    
    var i = 0
    
    /* On click, segue to event. */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        i = indexPath.row
    }
    
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}
