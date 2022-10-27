//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Николай Христолюбов on 23.10.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullname
        
        emailLabel.text = person.email
        phoneLabel.text = person.phoneNumber

    }

}
