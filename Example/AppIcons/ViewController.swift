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
        present(AppIcons.viewController(), animated: true, completion: nil)
    }

}

