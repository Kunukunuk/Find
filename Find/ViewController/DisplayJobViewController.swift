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
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var jobDescription: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if jobDetail?.companyLogo == "No Company Logo" {
            companyLogo.image = UIImage(named: "NoLogo")
        } else {
            do {
                let url = URL(string: (jobDetail?.companyLogo)!)
                let data = try Data(contentsOf: url!)
                self.companyLogo.image = UIImage(data: data)
            }
            catch {
                print(error)
            }
        }
        companyName.text = jobDetail?.companyName
        jobDescription.text = jobDetail?.jobDescription
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
