//
//  TabBarController.swift
//  ContactList
//
//  Created by Николай Христолюбов on 23.10.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
        
    }
}

    extension TabBarController {
    private func setupViewControllers() {
        guard let contactNavVC = viewControllers?.first as? UINavigationController else {return}
        guard let contactVC = contactNavVC.topViewController as? ContactListViewController else {return}
        
        guard let sectionNavVC = viewControllers?.last as? UINavigationController else {return}
        guard let sectionVC = sectionNavVC.topViewController as? SectionTableViewController else {return}
        contactVC.persons = persons
        sectionVC.persons = persons
    }
  
}
