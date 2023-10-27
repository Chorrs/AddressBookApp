//
//  SelectedContactViewController.swift
//  AddressBookApp
//
//  Created by Chorrs on 27.10.23.
//

import UIKit

final class SelectedContactViewController: UIViewController {
    
    @IBOutlet weak var phoneTextLabel: UILabel!
    
    @IBOutlet weak var emailTextLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = person.fullName
        phoneTextLabel.text = "Phone: " + person.phoneNumber
        emailTextLabel.text = "Email: " + person.email
    }
}
