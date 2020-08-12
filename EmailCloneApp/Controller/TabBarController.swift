//
//  TabBarController.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/30/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            setController(HomeVC(), title: "", image: "tray.fill", tag: 0),
            setController(ViewController(), title: "", image: "clock", tag: 1),
            setController(ViewController(), title: "", image: "pencil.circle.fill", tag: 2),
            setController(GroupsController(), title: "", image: "circle.grid.hex", tag: 3),
            setController(ViewController(), title: "", image: "person.2", tag: 4),
        ]
    }

    func setController(_ controller: UIViewController, title: String, image: String, tag: Int) -> UIViewController {
        controller.tabBarItem = UITabBarItem(
        title: title,
        image: UIImage(systemName: image),
        tag: tag)
        return controller
    }
}
