//
//  Menu.swift
//  TableViews
//
//  Created by Davis Koh on 3/24/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

import UIKit

struct MenuItem {
  var name: String!
  var ingredients: [String]?
}

class Menu: NSObject {
  var name: String!
  var date: NSDate?
  
  var dishes: [MenuItem]?
  var drinks: [MenuItem]?
  
  init(name: String, dishes: [MenuItem]?, drinks: [MenuItem]?, date: NSDate = NSDate()) {
    super.init()
    
    self.name = name
    self.date = date
    self.dishes = dishes
    self.drinks = drinks
  }
}
