//
//  TabBarViewController.swift
//  AddressBookApp
//
//  Created by Chorrs on 27.10.23.
//

import UIKit

final class TabBarViewController: UITabBarController {
    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Personal Lists"
        transferData()
    }
    
    // MARK: - Navigation
    private func transferData() {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let personalListsVC = viewController as? PersonalListsViewController {
                personalListsVC.persons = persons
                
            } else if let advancedPersonalListsVC = viewController as? AdvancedPersonalListsViewController {
                advancedPersonalListsVC.person = persons
            }
        }
    }
}
/* 2-й вариант передачи данных на др.экраны:
private func transferData() {
 guard let viewControllers else { return }
 guard let personalListsVC = viewControllers.first as? PersonalListsViewController else { guard }
 guard let advancedPersonalListsVC = viewControllers. as? AdvancedPersonalListsViewController else { return }
 
 let persons = Person.getPersons()
 personalListsVC.persons = persons
 advancedPersonalListsVC.person = persons
 }
 */

