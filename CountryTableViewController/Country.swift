//
//  Country.swift
//  CountryTableViewController
//
//  Created by Kritima Kukreja on 2020-03-04.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit
import Foundation

class Country{
  var name : String
  var capital : String
  var flag : UIImage
   
  init(name: String , capital: String,flag: UIImage) {
    self.name = name
    self.capital = capital
    self.flag = flag
     
  }
}
