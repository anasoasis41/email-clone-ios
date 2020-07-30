//
//  HomeVC.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/30/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var markUnreadButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
   
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DataParser().get() { (users) in
            print(users)
        }
        
    }
}
