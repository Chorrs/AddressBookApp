//
//  AdvancedPersonalListViewController.swift
//  AddressBookApp
//
//  Created by Chorrs on 27.10.23.
//

import UIKit

final class AdvancedPersonalListsViewController: UITableViewController {
    var person: [Person] = []

}
// MARK: - UITableViewDataSource
extension AdvancedPersonalListsViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "advancedContactCellIdentifier", for: indexPath)
        
        let person = person[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
