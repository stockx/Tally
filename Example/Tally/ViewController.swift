//
//  ViewController.swift
//  Tally
//
//  Created by Laurent Shala on 05/30/2017.
//  Copyright (c) 2017 Laurent Shala. All rights reserved.
//

import UIKit
import Tally

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let times = Tally.numberOfAppLaunches() == 1 ? "time" : "times"
        label.text = "App did launch \(Tally.numberOfAppLaunches()) \(times)"
        
        if Tally.appHasLaunched(numberOfTimes: 3) {
            let alertController = UIAlertController(title: "Threshold reached!", message: "Do anything you want!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismis", style: .cancel, handler: nil))
            present(alertController, animated: true)
        }
    }
}

