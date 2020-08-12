//
//  GroupsController.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 8/12/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class GroupsController: UIViewController {

    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var imageGroup: UIImageView!
    @IBOutlet weak var iconSearch: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var groups = [Groups]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Register the xib for tableview cell
        let cellNib = UINib(nibName: "GroupsCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "groupsCell")
        
        
        groups = DataGroups.load.allGroups()
        
    }
    
    fileprivate func setupUI() {
        // Add shadow to bottom of navView
        navView.layer.shadowColor = UIColor.black.cgColor
        navView.layer.shadowOffset = CGSize(width: 0, height: 1)
        navView.layer.shadowOpacity = 0.2
        navView.layer.shadowRadius = 0.5
    }

}

extension GroupsController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "groupsCell") as? GroupsCell {
            let group = groups[indexPath.row]
            cell.setupTableView(group)
            
            return cell
        }
        return UITableViewCell()
    }

}
