//
//  HomeViewCell.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/31/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class HomeViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var user: User!
    
    func setup(_ user: User) {
        self.user = user
        
        userImage.load(self.user.image)
        userImage.setRounded()
        userImage.clipsToBounds = true
        
        usernameLabel.text = self.user.title
        subTitleLabel.text = self.user.subtitle
    }
    
}
