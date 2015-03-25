//
//  ViewController.swift
//  Cat Years
//
//  Created by Davis Koh on 12/22/14.
//  Copyright (c) 2014 com.DavisKoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ageInput: UITextField!
    @IBOutlet var ageDisplay: UILabel!

    @IBAction func findAge(sender: AnyObject) {
        // convert strin to int
        var enteredAge = ageInput.text.toInt()
        
        // possibility that enteredAge may not be convertable, ex: "t"
        // ! says it will always be convertable / value will exist
        // ? says it may not??????
        
        if enteredAge != nil {
            var catYears = enteredAge! * 7
            
            // print age to console
            println(catYears)
            
            // update label
            ageDisplay.text = "Your cat is \(catYears) cat years old"
        }
        
        ageDisplay.text = "Please enter a number"
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

