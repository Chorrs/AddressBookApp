//
//  PLViewController.swift
//  AddressBookApp
//
//  Created by Chorrs on 27.10.23.
//

import UIKit

final class PersonalListsViewController: UITableViewController {
    var person: [Person]!
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        // Get the new view controller using segue.destination.
        guard let selectedContactVC = segue.destination as? SelectedContactViewController else { return }
        // Pass the selected object to the new view controller.
        selectedContactVC.person = person[indexPath.row]
    }
}
// MARK: - UITableViewDataSource
extension PersonalListsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactCellIdentifier",
            for: indexPath)
        
        let person = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
