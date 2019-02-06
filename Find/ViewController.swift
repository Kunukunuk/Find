//
//  ViewController.swift
//  Find
//
//  Created by Kun Huang on 2/1/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jobTitleText: UITextField!
    @IBOutlet weak var locationText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func searchJobs(_ sender: UIButton) {
        print("hello")
    }
    
}

