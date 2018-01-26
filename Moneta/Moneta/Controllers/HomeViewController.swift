//
//  HomeViewController.swift
//  Moneta
//
//  Created by Dulio Denis on 1/24/18.
//  Copyright © 2018 ddApps. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var conversionItem = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversionItem = ["Currency", "Length", "Speed", "Temperature"]
        
        self.tableView.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversionItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = conversionItem[indexPath.row]
        return cell
    }
    
}
