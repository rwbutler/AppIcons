//
//  ViewController.swift
//  AppIcons
//
//  Created by rwbutler on 12/19/2019.
//  Copyright (c) 2019 rwbutler. All rights reserved.
//

import UIKit
import AppIcons

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentAppIcons()
    }
    
    @IBAction func presentAppIcons() {
        let iconConfig = AppIcons.Configuration(cornerRadius: 5.0)
        let iconsViewController = AppIcons.viewController(configuration: iconConfig)
        present(iconsViewController, animated: true, completion: nil)
    }
    
}

