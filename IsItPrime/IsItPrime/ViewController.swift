//
//  ViewController.swift
//  IsItPrime
//
//  Created by Davis Koh on 2/23/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var userInput: UITextField!
  @IBOutlet var displayAnswer: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func isPrime(n: Int) -> Bool {
    if n < 2 {
      return false
    }
    
    for i in 2..<n {
      if n % i == 0 {
        return false
      }
    }
    
    return true
  }

  @IBAction func guess(sender: AnyObject) {
    var userInputInt = userInput.text.toInt()
    
    if userInputInt == nil {
      displayAnswer.text = "Please enter a number"
      return
    }
    
    let unwrappedInt = userInputInt!
    
    if isPrime(unwrappedInt) == true {
      displayAnswer.text = "\(unwrappedInt) is a prime number!"
    } else {
      displayAnswer.text = "\(unwrappedInt) is NOT a prime number!"
    }
  }
}

