//
//  ViewController.swift
//  CountryTableViewController
//
//  Created by Kritima Kukreja on 2020-03-04.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
  @IBOutlet weak var tblCountry: UITableView!
  lazy var countryNames : [Country] = []
    
  override func viewDidLoad() {
    super.viewDidLoad()

    countryNames = DataStorage.getInstance().getAllCounties()
    // Do any additional setup after loading the view.
  }
}
extension FirstViewController : UITableViewDelegate, UITableViewDataSource
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return countryNames.count
  }
   
  func numberOfSections(in tableView : UITableView) -> Int{
   
  return 1
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
    let country = countryNames[indexPath.row]
     
    cell?.textLabel?.text = country.name
    cell?.detailTextLabel?.text = country.capital
    cell?.imageView?.image = country.flag
    return cell!
  }
   
}



