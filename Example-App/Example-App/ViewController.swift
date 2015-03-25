//
//  ViewController.swift
//  Example-App
//
//  Created by Davis Koh on 12/22/14.
//  Copyright (c) 2014 com.DavisKoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myButton: UIButton!
    @IBOutlet var myInput: UITextField!

    @IBAction func buttonPressed(sender: AnyObject) {
        // update label when button pressed
        // remove updating label when app starts
        
        myLabel.text = "It worked!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // exercise: change texts programmatically
        myButton.setTitle("bro dude", forState: UIControlState.Normal)
        myInput.placeholder = "play noice"
        
        // print to console
        println("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

