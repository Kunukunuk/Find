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
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchPressed" {
            let destincationVC = segue.destination as! JobResultsViewController
            if let searchedJob = jobTitleText.text {
                destincationVC.searchedJob = searchedJob
            }
            if let searchedLocation = locationText.text {
                destincationVC.searchedLocation = searchedLocation
            }
        }
    }
    
}

