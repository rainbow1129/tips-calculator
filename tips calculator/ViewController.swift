//
//  ViewController.swift
//  tips calculator
//
//  Created by Haihong Wang on 10/18/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var chargetextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        chargetextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.0, 0.15, 0.2, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let chargeAmount = NSString(string: chargetextField.text!).doubleValue
        let tip = chargeAmount * tipPercentage
        
        let total = chargeAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

