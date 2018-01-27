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
    let converterSegueIdentifier = "ConverterViewController"
    var currentIndexPathRow: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversionItem = ["Currency", "Length", "Speed", "Temperature"]
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == converterSegueIdentifier {
            let destination = segue.destination as! ConverterViewController
            destination.conversionType = conversionItem[currentIndexPathRow]
        }
    }

}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentIndexPathRow = indexPath.row
        performSegue(withIdentifier: converterSegueIdentifier, sender: nil)
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
