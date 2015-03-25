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

  var menu: Menu!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let dishes = [
      MenuItem(name: "Pernil Asado", ingredients: nil),
      MenuItem(name: "Sancocho", ingredients: nil),
      MenuItem(name: "Roast Chicken", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil),
      MenuItem(name: "Cubano", ingredients: nil)
    ]
    
    menu = Menu(name: "Casa Adela", dishes: dishes, drinks: nil)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // return number of rows in table
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menu.dishes!.count
  }
  
  // defines content of each individual cell
  // below code is executed n times where n = tableView() from above
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCellId")
    
    cell.textLabel?.text = menu.dishes![indexPath.row].name
    
    return cell
  }
}

