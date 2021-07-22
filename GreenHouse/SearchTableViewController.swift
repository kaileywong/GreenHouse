//
//  TableViewController.swift
//  SearchBar
//
//  Created by Kailey Wong on 7/22/21.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {

    @IBOutlet var searchBar: UITableView!
    let data = ["sunscreen", "makeup", "dental care", "shaving", "face & body wash"]
    var filteredData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
        
        filteredData = data
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item")! as UITableViewCell
        
        cell.textLabel?.text = filteredData[indexPath.row]
        
        return cell
    }

//    MARK: Search Bar Config
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        
        if searchText == "" {
            filteredData = data
        }
        else {
            for item in data {
                if item.lowercased().contains(searchText.lowercased()){
                    filteredData.append(item)
                }
            }
            
            self.tableView.reloadData()
        }
    }
}
