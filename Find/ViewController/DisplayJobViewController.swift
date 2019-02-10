//
//  DisplayJobViewController.swift
//  Find
//
//  Created by Kun Huang on 2/9/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import UIKit

class DisplayJobViewController: UIViewController {

    var jobDetail: JobData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(jobDetail?.jobTitle)
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
