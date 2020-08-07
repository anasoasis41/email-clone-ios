//
//  HomeVC.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/30/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var markUnreadButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
   
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Register the xib for tableview cell
        let cellNib = UINib(nibName: "HomeViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "emailTableCell")
        
        DataParser().get() { (users) in
            self.users = users
            self.userImage.load(self.users[0].image)
            self.userImage.setRounded()
            self.tableView.reloadData()
        }
        searchButton.addTarget(self, action: #selector(self.pressed), for: .touchUpInside)
    }
    
    @objc func pressed(sender: UIButton!) {
        let controller = SearchController()
        controller.users = self.users
        self.present(controller, animated: true, completion: nil)
    }

    fileprivate func setupUI() {
        // Add shadow to bottom of navView
        navView.layer.shadowColor = UIColor.black.cgColor
        navView.layer.shadowOffset = CGSize(width: 0, height: 1)
        navView.layer.shadowOpacity = 0.2
        navView.layer.shadowRadius = 0.5
    }
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "emailTableCell") as? HomeViewCell {
            let user = users[indexPath.row]
            
            if indexPath.row == 0 {
                cell.setupCollection(self.users)
            } else {
                cell.setupTableView(user)
            }
            
            return cell
        }
        return UITableViewCell()
    }

}
