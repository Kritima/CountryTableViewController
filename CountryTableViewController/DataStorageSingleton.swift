//
//  DataStorageSingleton.swift
//  CountryTableViewController
//
//  Created by Kritima Kukreja on 2020-03-05.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class DataStorage
{
    private let instance = DataStorage()
    private lazy var countryList : [Country] = []
    
    private init() {}
    
    func getInstance() -> DataStorage {
        return instance
    }
    
    func addCountry(country: Country)
    {
        self.countryList.append(country)
    }
    
    func getAllCounties() -> [Country]
    {
        return self.countryList
    }
}
