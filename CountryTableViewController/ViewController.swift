//
//  ViewController.swift
//  CountryTableViewController
//
//  Created by Kritima Kukreja on 2020-03-04.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  @IBOutlet weak var tblCountry: UITableView!
  lazy var countryName : [Country] = []
    
  override func viewDidLoad() {
    super.viewDidLoad()
    loadCountries()
    // Do any additional setup after loading the view.
  }
  func loadCountries()
  {
    countryName.append(Country(name: "Afghanestan", capital: "Afghanestan", flag: #imageLiteral(resourceName: "home")))
    countryName.append(Country(name: "Afghanestan", capital: "Afghanestan", flag: #imageLiteral(resourceName: "home")))
    countryName.append(Country(name: "Afghanestan", capital: "Afghanestan", flag: #imageLiteral(resourceName: "home")))
    countryName.append(Country(name: "Afghanestan", capital: "Afghanestan", flag: #imageLiteral(resourceName: "home")))
    countryName.append(Country(name: "Afghanestan", capital: "Afghanestan", flag: #imageLiteral(resourceName: "home")))
    
}
}
extension ViewController : UITableViewDelegate, UITableViewDataSource
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countryName.count
  }
   
  func numberOfSections(in tableView : UITableView) -> Int{
   
  return 1
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
    let country = countryName[indexPath.row]
     
    cell?.textLabel?.text = country.name
    cell?.detailTextLabel?.text = country.capital
    cell?.imageView?.image = country.flag
    return cell!
  }
   
}



