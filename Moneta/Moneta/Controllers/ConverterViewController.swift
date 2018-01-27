//
//  ConverterViewController.swift
//  Moneta
//
//  Created by Dulio Denis on 1/25/18.
//  Copyright © 2018 ddApps. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var conversionTypeLabel: UILabel!
    var conversionType = String()
    var conversionItem = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conversionTypeLabel.text = conversionType
        conversionItem = ["Currency", "Length", "Speed", "Temperature"]
        
        self.tableView.dataSource = self
    }
    
    @IBAction func dismissController(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension ConverterViewController: UITableViewDataSource {
    
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
