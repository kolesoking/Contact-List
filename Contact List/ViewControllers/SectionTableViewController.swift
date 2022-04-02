//
//  SectionTableViewController.swift
//  Contact List
//
//  Created by катя on 01.04.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var personList: [Person] = []

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(named: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(named: "email")
        }

        cell.contentConfiguration = content

        return cell
    }
   

}
