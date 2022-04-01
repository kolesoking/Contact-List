//
//  FullInfoViewController.swift
//  Contact List
//
//  Created by катя on 01.04.2022.
//

import UIKit

class FullInfoViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }

}
