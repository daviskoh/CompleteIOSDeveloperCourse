//
//  ViewController.swift
//  NavigationBars
//
//  Created by Davis Koh on 2/25/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var timer: NSTimer? = NSTimer()
  var count = 0

  @IBOutlet var displayCount: UILabel!
  
  // NOTE: needs to be exposed publicly for NSTimer.scheduleTimer... to work
  func updateText() {
    displayCount.text = String(++count)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    displayCount.text = String(count)
    
    start(true)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func pause(sender: AnyObject) {
    timer?.invalidate()
    timer = nil
  }

  @IBAction func start(sender: AnyObject) {
    // TODO: consider running this on separate thread
    // https://developer.apple.com/library/ios/documentation/General/Conceptual/ConcurrencyProgrammingGuide/Introduction/Introduction.html
    
    // start timer using GCD
    // store ref to timer
    // NOTE: though concurrency not really needed, this could be good op for learning GCD
    
    timer = NSTimer.scheduledTimerWithTimeInterval(
      1,
      target: self,
      selector: Selector("updateText"),
      userInfo: nil,
      repeats: true
    )
  }

  @IBAction func stop(sender: AnyObject) {
    // invalidate timer & set to nil
    pause(true)
    
    count = 0
    displayCount.text = String(count)
  }
}

