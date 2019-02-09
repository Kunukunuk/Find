//
//  JobCell.swift
//  Find
//
//  Created by Kun Huang on 2/6/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import UIKit

class JobCell: UITableViewCell {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var jobCreationLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    var job: JobData? {
        didSet {
            if job?.companyLogo == "No Company Logo" {
                logoImageView.image = UIImage(named: "NoLogo")
            } else {
                print(job?.companyLogo)
            }
            jobTitleLabel.text = job?.jobTitle
            jobCreationLabel.text = job?.jobCreationDate
            companyNameLabel.text = job?.companyName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
