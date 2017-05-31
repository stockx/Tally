//
//  UserDefaultsExtensions.swift
//  Pods
//
//  Created by Laurent Shala on 5/31/17.
//
//

extension UserDefaults {
    private enum Keys: String {
        case numberOfAppOpens = "com.stockx.ios.tally.numberOfAppOpens"
    }
    
    var numberOfAppOpens: Int {
        get {
            return integer(forKey: Keys.numberOfAppOpens.rawValue)
        }
        set {
            set(newValue, forKey: Keys.numberOfAppOpens.rawValue)
        }
    }
}
