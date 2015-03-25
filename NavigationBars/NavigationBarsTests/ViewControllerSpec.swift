//
//  ViewControllerSpec.swift
//  NavigationBars
//
//  Created by Davis Koh on 2/25/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit
import XCTest

class ViewControllerSpec: XCTestCase {
  var ctrl: ViewController!

  override func setUp() {
    super.setUp()
    
    ctrl = ViewController()
  }
  
  override func tearDown() {
    ctrl.timer?.invalidate()
    ctrl.timer = nil
    
    super.tearDown()
  }
  
  func testInit() {
    XCTAssertEqual(ctrl.count, 0, "should init at 0")
  }
  
  // might as well test it
  func testUpdateText() {
    ctrl.displayCount = UILabel()
    
    ctrl.updateText()

    XCTAssertEqual(ctrl.displayCount.text!, String(ctrl.count), "should update text with count")
  }
  
  func testStart() {
    ctrl.start(true)
    
    // NOTE: below is need because swift knows unwrapping NSTimer? will return NSTimer
    XCTAssertTrue((ctrl.timer! as Any) is NSTimer, "timer should be set to new instance")
  }
  
  func testPause() {
    ctrl.timer = NSTimer.scheduledTimerWithTimeInterval(
      1,
      target: self,
      selector: nil,
      userInfo: nil,
      repeats: true
    )
    
    ctrl.pause(true)
    XCTAssertNil(ctrl.timer, "timer should be nil")
  }
  
  func testStop() {
    ctrl.displayCount = UILabel()
    
    ctrl.timer = NSTimer.scheduledTimerWithTimeInterval(
      1,
      target: self,
      selector: nil,
      userInfo: nil,
      repeats: true
    )
    
    ctrl.stop(true)
    
    XCTAssertEqual(ctrl.count, 0, "count should be reset")
    XCTAssertEqual(ctrl.displayCount.text!, "0", "user should be shown updated count")
  }
}
