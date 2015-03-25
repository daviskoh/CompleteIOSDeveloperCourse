//
//  ViewController.swift
//  RandomNumber
//
//  Created by Davis Koh on 1/22/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

/**
 * Structure
 * 
 * create private randomNum on load
 * keep track of default headerText
 * 
 * capture user input text
 * convert to Int
 *
 * check against randomNum
 * if nil then tell user to add num
 * if randomNum then tell user correct
 * else then tell user wrong
 */

import UIKit

class ViewController: UIViewController {
    var randomNum: Int!
    var defaultHeaderText = "Guess a Number Between 1 and 5"
    
    // bindings
    @IBOutlet var userInput: UITextField?
    @IBOutlet var headerText: UILabel!
    @IBOutlet var displayNum: UILabel!
    
    func generateRandom() -> Int {
        return Int(arc4random_uniform(6))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomNum = generateRandom()
        
        println("randomNum")
        println(randomNum)
        
        println("defaultHeaderText")
        println(defaultHeaderText)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    func flashAnswer(message: String) {
        headerText.text = message
        displayNum.text = String(randomNum)
    }
    
    func resetState() {
        delay(2.0) {
            self.headerText.text = self.defaultHeaderText
            self.displayNum.text = "?"
        }
      
        userInput?.text = ""
        randomNum = generateRandom()
    }
    
    @IBAction func guessNum(sender: AnyObject) {
        var message: String
        
        // convert user input to Int
        let answer = userInput?.text.toInt()
        
        println("userInput?.text")
        println(userInput?.text)
        
        if answer == nil {
            headerText.text = "Please choose an answer"
            return resetState()
        } else if answer == randomNum {
            message = "Correct!"
        } else {
            message = "Wrong!"
        }
        
        println(message)
        
        flashAnswer(message)

        resetState()
    }
}

