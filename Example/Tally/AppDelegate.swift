//
//  AppDelegate.swift
//  Tally
//
//  Created by Laurent Shala on 05/30/2017.
//  Copyright (c) 2017 Laurent Shala. All rights reserved.
//

import UIKit
import Tally

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Tally.didOpenApplication()
        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        Tally.didOpenApplication()
    }
}

