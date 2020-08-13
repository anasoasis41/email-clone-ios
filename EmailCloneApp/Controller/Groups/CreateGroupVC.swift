//
//  CreateGroupVC.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 8/13/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {

    @IBOutlet weak var viewGroup: UIView!
    @IBOutlet weak var imageGroup: UIImageView!
    @IBOutlet weak var nameGroupTextField: UITextField!
    @IBOutlet weak var searchPeople: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewPeople: UIView!
    @IBOutlet weak var selectedUserLabel: UILabel!
    @IBOutlet weak var addGroupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func back_button(_ sender: Any) {
    }
    
}
