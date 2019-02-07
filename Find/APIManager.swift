//
//  APIManager.swift
//  Find
//
//  Created by Kun Huang on 2/5/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import Foundation

class APIManager {
    
    var session: URLSession
    let basicURL = "https://jobs.github.com/positions.json?"
    
    init() {
        session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
    }
    
    func getGithubJobs(with jobTitle: String, by location: String, completion: @escaping ([JobData]?, Error?) -> ()) {
        
        var jobs:[JobData] = []
        
        let apiURL = URL(string: basicURL + "description=\(jobTitle)&location=\(location)")
        
        let task = URLSession.shared.dataTask(with: apiURL!) { (data, response, error) in
            guard let dataJson = data else {
                print(error?.localizedDescription)
                completion(nil, error)
                return
            }
            
            let dataArray = try! JSONSerialization.jsonObject(with: dataJson, options: []) as! NSArray
            
            for eachJob in dataArray {
                let eachJobDict = eachJob as! [String: Any]
                let job = JobData(eachJob: eachJobDict)
                print(job.jobTitle)
                jobs.append(job)
            }
            
            completion(jobs, nil)
        }
        task.resume()
    }
}
