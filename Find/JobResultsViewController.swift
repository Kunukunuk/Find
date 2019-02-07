//
//  JobResultsViewController.swift
//  Find
//
//  Created by Kun Huang on 2/6/19.
//  Copyright © 2019 Kun Huang. All rights reserved.
//

import UIKit

class JobResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "JobCell", for: indexPath) as! JobCell
        
        cell.job = jobs[indexPath.row]
        
        return cell
    }
    

    var searchedJob: String?
    var searchedLocation: String?
    var jobs: [JobData] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        searchedJob = searchedJob?.replacingOccurrences(of: " ", with: "+")
        searchedLocation = searchedLocation?.replacingOccurrences(of: " ", with: "+")
        
        getJobFResults()
        
    }
    

    func getJobFResults() {
        
        APIManager().getGithubJobs(with: searchedJob!, by: searchedLocation!) { (jobs, error) in
            if error == nil {
                self.jobs = jobs!
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            } else {
                print("api error")
            }
        }
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
