//
//  TabBarViewController.swift
//  Contact List
//
//  Created by катя on 01.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    private func setupViewController() {
        let personList = Person.setValue()
        let personListVC = viewControllers?.first as? PersonListViewController
        
        personListVC?.personList = personList
        
    }

}