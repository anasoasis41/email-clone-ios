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

        let home = ViewController()
        home.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "tray.fill") ,
            tag: 0
        )
        let event = ViewController()
        event.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "clock") ,
            tag: 0
        )
        let edit = ViewController()
        edit.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "pencil.circle.fill") ,
            tag: 0
        )
        let groups = ViewController()
        groups.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "circle.grid.hex") ,
            tag: 0
        )
        let people = ViewController()
        people.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "person.2") ,
            tag: 0
        )
        
        viewControllers = [home, event, edit, groups, people]
    }

}
