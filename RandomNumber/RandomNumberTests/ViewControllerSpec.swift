//
//  ViewControllerSpec.swift
//  RandomNumber
//
//  Created by Davis Koh on 1/26/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit
import XCTest

class ViewControllerSpec: XCTestCase {
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
  
    /**
     * Testing Overview:
     * 
     * setup & init ViewController w/ Story Board Components
     * 
     * Things to Test:
     * 
     * - init logic
     * - delay()
     * - flashAnswer()
     * - resetState()
     * 
     * - guessNum scenarios
     *   answer is nil
     *   answer is right
     *   answer is wrong
     */

    func testViewDidLoad() {
        XCTAssertNil(ctrl.randomNum, "should init as nil before view has loaded")
        
        ctrl.viewDidLoad()
        
        XCTAssertNotNil(ctrl.randomNum, "should have assigned value after view loads")
        
    }
    
    func testFlashAnswer() {
        let assertionLabel = "should int as nil"
        let message = "meow there friend"
        
        let dummyText = "bro"
        let randomNum = 1
        
        // need to setup value because #flashAnswer assumes this to be != nil
        ctrl.randomNum = randomNum
        
        ctrl.headerText = UILabel()
        ctrl.displayNum = UILabel()

        ctrl.flashAnswer(message)
        XCTAssertEqual(ctrl.headerText.text!, message, "headerText should be set to text passed into #flashAnswer")
        XCTAssertEqual(ctrl.displayNum.text!, String(randomNum), "displayNum should be set to '?'")
    }
    
    func testResetState() {
        // ideally...would also test calling of delay
        // dont know how to do it yet...
        
        let dummyNum = 5
        
        ctrl.userInput = UITextField()
        ctrl.userInput?.text = "meowmix"
        ctrl.randomNum = dummyNum
        
        ctrl.resetState()
        
        XCTAssertEqual(ctrl.userInput!.text, "", "user input text should be reset")
        XCTAssertNotEqual(ctrl.randomNum, dummyNum, "a new random num should be generated")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
