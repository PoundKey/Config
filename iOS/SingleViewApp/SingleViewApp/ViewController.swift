//
//  ViewController.swift
//  SingleViewApp
//
//  Created by Chang Tong Xue on 2015-10-24.
//  Copyright © 2015 Chang Tong Xue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var sampleOutlet: UILabel!
    @IBOutlet weak var sampleField: UITextField!
    @IBAction func sampleButton(sender: AnyObject) {
        sampleOutlet.text = "你好，" + sampleField.text! + "！"
        sampleField.text = ""
        self.view.endEditing(true) // FirstResponder ==> Keyboard Holder
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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

