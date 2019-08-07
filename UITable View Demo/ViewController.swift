//
//  ViewController.swift
//  UITable View Demo
//
//  Created by Mirko Cukich on 8/5/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
//  Swift UITable View Demo - Demo 5 of 30

import UIKit
// Two delegates required: Table View > Delegate and Data Source
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Table View Outlet
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //needed to make it work
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    // these two are req. for table view to be implemented
    // total number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    
    // row contents > ex. Row #20 / where you populate,
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        // calls out which row in use displayed
        cell?.textLabel?.text = "Row #\(indexPath.row)"
        return cell!
    }
}
