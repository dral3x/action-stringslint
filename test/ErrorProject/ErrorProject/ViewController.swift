//
//  ViewController.swift
//  ErrorProject
//
//  Created by Alessandro "Sandro" Calzavara on 02/03/2020.
//  Copyright © 2020 Alessandro Calzavara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // This should trigger an error
        _ = NSLocalizedString("not existing key", comment: "")
    }


}

