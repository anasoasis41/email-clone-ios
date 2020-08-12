//
//  GroupsController.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 8/12/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class GroupsController: UIViewController {

    @IBOutlet weak var imageGroup: UIImageView!
    @IBOutlet weak var iconSearch: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var groups = [Groups]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        groups = DataGroups.load.allGroups()
        
        print(groups)
        
    }

}
