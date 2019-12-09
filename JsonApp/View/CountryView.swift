//
//  ViewController.swift
//  JsonApp
//
//  Created by Игорь Сазонов on 17/11/2019.
//  Copyright © 2019 Игорь Сазонов. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
   
    var viewModel = CountryVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.viewDidLoad()
        navigationItem.title = "Country"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        //tableView.delegate = self
        //tableView.dataSource = self
        //self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.country.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCountry = viewModel.country[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = currentCountry.countryName
        return cell
    }
}

