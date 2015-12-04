//
//  ViewController.swift
//  SingleViewApp-DatePicker
//
//  Created by Chang Tong Xue on 2015-12-03.
//  Copyright © 2015 Chang Tong Xue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func computeDay(sender: AnyObject) {
        var chosenDate = self.datePicker.date
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        myAlert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
        // show alert
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

