//
//  extension+UIImageView.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/31/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit


extension UIImageView {
    
    func load(_ path: String) {
        let urlString = path
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (d, _, _) in
            DispatchQueue.main.async {
                if let data = d {
                    self.image = UIImage(data: data)
                    
                }
            }
        }.resume()
    }
    
    func setRounded() {
        let radius = self.frame.width / 2
       self.layer.cornerRadius = radius
       self.layer.masksToBounds = true
    }
}
