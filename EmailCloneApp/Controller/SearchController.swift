//
//  SearchController.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 8/6/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class SearchController: UIViewController, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var users: [User] = []

    var filteredData: [User]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        searchBar.delegate = self
        filteredData = users
        
        let cellNib = UINib(nibName: "HomeViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "emailTableCell")
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emailTableCell") as! HomeViewCell
        cell.usernameLabel.text = filteredData[indexPath.row].username
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? users : users.filter { (item: User) -> Bool in
            return item.username.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        tableView.reloadData()
    }
    
}
