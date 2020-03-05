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
    
    lazy var countryNames = ["Afghanistan","Albania","Algeria","Bahrain","Canada"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCountries()
        // Do any additional setup after loading the view.
        
    }
    
    func loadCountries()
    {
        countryNames.append(Country(name:"Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: <#T##String#>)))
        countryNames.append(Country(name:"Albania", capital: "Kabul", flag: #imageLiteral(resourceName: <#T##String#>)))
        countryNames.append(Country(name:"Algeria", capital: "Kabul", flag: #imageLiteral(resourceName: <#T##String#>)))
        countryNames.append(Country(name:"Algeria", capital: "Kabul", flag: #imageLiteral(resourceName: <#T##String#>)))

    }
}

    extension ViewController: UITableViewDataSource, UITableViewDelegate
    {
        func numberOfSections(in tableView: UITableView) -> Int {
               // #warning Incomplete implementation, return the number of sections
               return 1
           }
           
           func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               // #warning Incomplete implementation, return the number of rows
               return countryNames.count
           }
           
           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
               
               let country = countryNames[indexPath.row]
            cell?.textLabel?.text = country.name
               cell?.detailTextLabel?.text = country.capital
            cell?.imageView?.text = country.capital.flag
               return cell
        
        
    }
}



