//
//  HomeViewCell.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/31/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class HomeViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var user: User!
    var users: [User]!
    
    func setupTableView(_ user: User) {
        self.user = user
        
        userImage.load(self.user.image)
        userImage.setRounded()
        userImage.clipsToBounds = true
        
        usernameLabel.text = self.user.title
        subTitleLabel.text = self.user.subtitle
    }
    
    func setupCollection(_ users: [User]) {
        userImage.isHidden = true
        usernameLabel.isHidden = true
        subTitleLabel.isHidden = true
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 150, height: 180)
        flowLayout.minimumLineSpacing = 2.0
        flowLayout.minimumInteritemSpacing = 5.0
        self.collectionView.collectionViewLayout = flowLayout
        self.collectionView.showsHorizontalScrollIndicator = false
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        // Register the xib for collection view cell
        let cellNib = UINib(nibName: "UserCollectionCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "usersCollectionCell")
        
        updateCellWith(users: users)
    }
    
}

extension HomeViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func updateCellWith(users: [User]) {
        self.users = users
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.users?.count ?? 0
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Set the data for each collection cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "usersCollectionCell", for: indexPath) as? UserCollectionCell {
            cell.userNameLbl.text = users[indexPath.row].username
            return cell
        }
        return UICollectionViewCell()
    }
    
    // Add spaces at the beginning and the end of the collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}
