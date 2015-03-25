//
//  ViewControllerTests.swift
//  IsItPrime
//
//  Created by Davis Koh on 2/24/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit
import XCTest

class ViewControllerTests: XCTestCase {
  var ctrl: ViewController!

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    ctrl = ViewController()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testIsPrime() {
    let isPrime = ctrl.isPrime
    
    let primeNums = [
      2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,71
    ]
    
    for n in primeNums {
      XCTAssertTrue(isPrime(n), "\(n) is a prime num")
    }
  }
  
  func testIsNotPrime() {
    let isPrime = ctrl.isPrime
    
    let notPrimeNums = [
      -1,0,1,6,8,10,14,15,16,18,20
    ]
    
    for n in notPrimeNums {
      XCTAssertFalse(isPrime(n), "\(n) is NOT a prime num")
    }
  }

  func testGuess() {
    let answer = "7"
    
    ctrl.displayAnswer = UILabel()
    ctrl.userInput = UITextField()
    ctrl.userInput.text = answer
    
    ctrl.guess(true)
    
    XCTAssertEqual(ctrl.displayAnswer.text!, "\(answer) is a prime number!", "message should be displayed to user")
  }
  
  func testGuessWhenInputNil() {
    ctrl.displayAnswer = UILabel()
    ctrl.userInput = UITextField()

    ctrl.guess(true)
    
    XCTAssertEqual(ctrl.displayAnswer.text!, "Please enter a number", "user should be asked to provide a num")
  }
}
