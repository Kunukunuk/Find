//
//  JobData.swift
//  Find
//
//  Created by Kun Huang on 2/5/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import Foundation

class JobData {
    
    var companyName: String?
    var companyLogo: String?
    var companyURL: URL?
    var jobCreationDate: String?
    var jobDescription: String?
    var howToApply: String?
    var jobID: String?
    var jobLocation: String?
    var jobTitle: String?
    var jobType: String?
    var jobURL: URL?
    
    init(eachJob: [String: Any]) {
        
        companyName = eachJob["company"] as? String ?? "No Company Name"
        companyLogo = eachJob["company_logo"] as? String ?? "No Company Logo"
        if let companyURLString = eachJob["company_url"] as? String {
            companyURL = URL(string: companyURLString)
        }
        jobCreationDate = eachJob["created_at"] as? String
        jobDescription = eachJob["description"] as? String
        howToApply = eachJob["how_to_apply"] as? String
        jobID = eachJob["id"] as? String
        jobLocation = eachJob["location"] as? String
        jobTitle = eachJob["title"] as? String
        jobType = eachJob["type"] as? String
        if let jobURLString = eachJob["url"] as? String {
            jobURL = URL(string: jobURLString)
        }
    }
}
