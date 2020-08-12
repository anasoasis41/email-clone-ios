//
//  GroupsCell.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 8/12/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class GroupsCell: UITableViewCell {

    @IBOutlet weak var imageGroup: UIImageView!
    @IBOutlet weak var nameGroupLbl: UILabel!
    
    func setupTableView(_ group: Groups) {
        imageGroup.image = group.image
        imageGroup.setRounded()
        imageGroup.clipsToBounds = true
        
        nameGroupLbl.text = group.name
    }
    
}
