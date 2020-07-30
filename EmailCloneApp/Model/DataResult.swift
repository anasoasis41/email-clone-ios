//
//  DataResult.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/30/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import Foundation

struct User: Decodable {
    var username: String
    var email: String
    var title: String
    var subtitle: String
    var description: String
    var image: String
    var sendingDate: String
}
