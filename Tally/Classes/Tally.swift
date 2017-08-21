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

    /**
     Function that should be called inside the AppDelegate when you want the
     number of opens to increment on record.
     
     Recomended to add into application(:didFinishLaunchingWithOptions:) and
     applicationWillEnterForeground(_)
     */
    public static func didOpenApplication() {
        UserDefaults.standard.numberOfAppOpens += 1
    }
    
    /**
     The number of times that the user has launched the application (note: since
     adding Tally to the project).
     
     - returns: number of opens on record
     */
    public static func numberOfAppOpens() -> Int {
        return UserDefaults.standard.numberOfAppOpens
    }
    
    /**
     Checks to see if the application has launched at least the number
     of times specified (note: since adding Tally to the project).
     
     - parameter times: The number of opens you want before function returns true
     - returns: true if the numberOfTimes is greater than or equal to the number of opens on record
     */
    public static func hasAppOpened(numberOfTimes times: UInt) -> Bool {
        return numberOfAppOpens() >= Int(times)
    }
    
    /** Will set the number of app opens on record to 0. */
    public static func resetNumberOfAppOpens() {
        UserDefaults.standard.numberOfAppOpens = 0
    }
    
    /** 
     Returns true when the app has been freshly launched for the first time 
     (note: since adding Tally to the project). 
     */
    public static func isFirstLaunch() -> Bool {
        return numberOfAppOpens() <= 1
    }
}
