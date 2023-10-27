//
//  TabBarViewController.swift
//  AddressBookApp
//
//  Created by Chorrs on 27.10.23.
//

import UIKit

final class TabBarViewController: UITabBarController {
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Personal Lists"
        transferData()
    }
    
    // MARK: - Navigation
    private func transferData() {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let personalListsVC = viewController as? PersonalListsViewController {
                personalListsVC.person = person
            } else if let advancedPersonalListsVC = viewController as? AdvancedPersonalListsViewController {
                advancedPersonalListsVC.person = person
            }
        }
    }
}
