//
//  ViewController.swift
//  PreWork Tip
//
//  Created by Ryan Davis on 8/21/18.
//  Copyright © 2018 Ryan Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0 //What if they paste ABC, returns default value = 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text =  String(format:"$%.2f",tip)  /*"$\(tip)" anything inside the parenthesis thats a variable, change it into whatever value*/
        totalLabel.text = String(format:"$%.2f",total) //$%.2f decimals, .2 = 2 decimal palces
    }
}
