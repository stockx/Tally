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
    
    /** Key to access the number of launches on record (UserDefaults) */
    private let numberOfTimesOpenedKey = "number_of_times_opened"
    
    /** Shared instance for the Tally (singleton) */
    static let shared = Tally()
    
    /**
     Function that should be called inside the AppDelegate when you want the
     number of launches to increment on record.
     
     Recomended to add into application(:didFinishLaunchingWithOptions:) and
     applicationWillEnterForeground(_)
     */
    public static func applicationOpened() {
        shared.update()
    }
    
    /**
     The number of times that the user has launched the application
     
     - returns: number of launches on record
     */
    public static func numberOfAppLaunches() -> Int {
        return UserDefaults.standard.integer(forKey: Tally.shared.numberOfTimesOpenedKey)
    }
    
    /**
     Initilizes the launch number on record if no value is present.
     Otherwise, it increments the number of launches on record.
     */
    private func update() {
        let numberOfTimesApplicationOpened = UserDefaults.standard.integer(forKey: Tally.shared.numberOfTimesOpenedKey)
        
        // If UserDefaults does not exist, 0 is returned.
        if numberOfTimesApplicationOpened == 0 {
            UserDefaults.standard.set(1, forKey: numberOfTimesOpenedKey)
            return
        }
        UserDefaults.standard.set(numberOfTimesApplicationOpened + 1, forKey: numberOfTimesOpenedKey)
    }
    
    /**
     Checks to see if the application has launched at least the number
     of times specified
     
     - parameter numberOfTimes: The number of launches you want before function returns true
     - returns: true if the numberOfTimes is greater than or equal to the number of launches on record
     */
    public static func appHasLaunched(numberOfTimes: Int) -> Bool {
        let numberOfTimesApplicationOpened = UserDefaults.standard.integer(forKey: Tally.shared.numberOfTimesOpenedKey)
        if numberOfTimesApplicationOpened == 0 || numberOfTimes <= 0 {
            return false
        }
        return numberOfTimesApplicationOpened >= numberOfTimes ? true : false
    }
}
