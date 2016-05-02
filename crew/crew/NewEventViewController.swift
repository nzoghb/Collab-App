//
//  NewEventViewController.swift
//  crew
//
//  Created by Maaz Uddin and Nicolas Zoghb on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPicker.delegate = self
        myPicker.dataSource = self
        
        HeadingField.becomeFirstResponder()
        //allows for tap recognition
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet var myPicker: UIPickerView!
    @IBOutlet var DatePicker: UIDatePicker!
    
    @IBOutlet var HeadingField: UITextField!
    @IBOutlet var DescField: UITextView!
    
    @IBOutlet weak var DoneButton: UIBarButtonItem!
    
    var eventItemInstance: EventItem?
    var eventDate: String = "Jan 1, 2017"
    
    let pickerData = ["Public", "My Crews", "Only Me"]
    var privacy: String = "My Crew"
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        privacy = pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    /* When heading back to EventListTableViewController. */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if sender as? NSObject != self.DoneButton{
            return
        }
        if !self.HeadingField.text!.isEmpty{
            self.eventItemInstance = EventItem(heading: self.HeadingField.text!, desc: self.DescField.text!, date: self.eventDate, visibility: self.privacy)
        }
    }
    
    func datePickerValueChanged(sender:UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        eventDate = dateFormatter.stringFromDate(sender.date)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //hide keyboard when anywhere else press
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
}
