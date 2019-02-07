//
//  JobResultsViewController.swift
//  Find
//
//  Created by Kun Huang on 2/6/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import UIKit

class JobResultsViewController: UIViewController {

    var searchedJob: String?
    var searchedLocation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("\(searchedJob) \(searchedLocation)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
