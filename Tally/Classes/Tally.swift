//
//  Tally.swift
//  Tally
//
//  Created by Laurent Shala on 05/26/2017.
//  Copyright (c) 2017 StockX. All rights reserved.
//

/**
 Class to track the number of times the user has opened the app since first
 time installing the app or since time this framework is available.
 */
public class Tally {
    
    /** Key to access the number of opens on record (UserDefaults) */
    private static let numberOfAppOpensKey = "com.stockx.ios.tally.numberOfAppOpens"
    
    /**
     Function that should be called inside the AppDelegate when you want the
     number of opens to increment on record.
     
     Recomended to add into application(:didFinishLaunchingWithOptions:) and
     applicationWillEnterForeground(_)
     */
    public static func didOpenApplication() {
        UserDefaults.standard.set(numberOfAppOpens() + 1, forKey: numberOfAppOpensKey)
    }
    
    /**
     The number of times that the user has launched the application
     
     - returns: number of opens on record
     */
    public static func numberOfAppOpens() -> Int {
        return UserDefaults.standard.integer(forKey: numberOfAppOpensKey)
    }

    /**
     Checks to see if the application has launched at least the number
     of times specified
     
     - parameter times: The number of opens you want before function returns true
     - returns: true if the numberOfTimes is greater than or equal to the number of opens on record
     */
    public static func hasAppOpened(numberOfTimes times: UInt) -> Bool {
        return numberOfAppOpens() >= Int(times)
    }
}
