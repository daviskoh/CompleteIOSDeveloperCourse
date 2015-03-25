//
//  ViewController.swift
//  TableViews
//
//  Created by Davis Koh on 3/24/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit

// UIViewController is responsible for table in Main Storyboard
// - conforms to UITableViewDelegate protocol
class ViewController: UIViewController, UITableViewDelegate {
  
  // setup from Table View to ViewController:
  // - dataSource
  // - delegate

  var cellContent = ["Rob", "Kirsten", "Tommy", "Ralphie"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // return number of rows in table
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cellContent.count
  }
  
  // defines content of each individual cell
  // below code is executed n times where n = tableView() from above
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCellId")
    
    cell.textLabel?.text = cellContent[indexPath.row]
    
    return cell
  }
}

