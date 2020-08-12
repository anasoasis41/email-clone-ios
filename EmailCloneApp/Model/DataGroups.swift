//
//  DataGroups.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 8/12/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class DataGroups {
    static let load = DataGroups()
    
    func allGroups() -> [Groups] {
        var groups = [Groups]()
        
        groups.append(Groups(image: #imageLiteral(resourceName: "id-card"), name: "Project"))
        groups.append(Groups(image: #imageLiteral(resourceName: "desktop"), name: "Family"))
        groups.append(Groups(image: #imageLiteral(resourceName: "football"), name: "Sport Team"))
        groups.append(Groups(image: #imageLiteral(resourceName: "library"), name: "Party"))
        groups.append(Groups(image: #imageLiteral(resourceName: "location"), name: "Vacation"))
        groups.append(Groups(image: #imageLiteral(resourceName: "presentation"), name: "Study Group"))
        
        return groups
    }
}
