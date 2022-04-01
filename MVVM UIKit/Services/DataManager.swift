//
//  DataManager.swift
//  MVVM UIKit
//
//  Created by Олейник Богдан on 01.04.2022.
//

import Foundation

class DataManger {
    
    static let shared = DataManger()
    
    private let userDefaults = UserDefaults()
    
    private init() {}
    
    func setFavouriteStatus(for courseName: String, with status: Bool) {
        userDefaults.set(status, forKey: courseName)
    }
    
    func getFavouriteStatus(for courseName: String) -> Bool {
        userDefaults.bool(forKey: courseName)
    }
}
