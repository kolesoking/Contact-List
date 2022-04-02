//
//  Person.swift
//  Contact List
//
//  Created by катя on 01.04.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func setValue() -> [Person] {
        
        let dataManager = DataManage()
        
        var persons: [Person] = []
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phones = dataManager.phones.shuffled()
        let emails = dataManager.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            persons.append(person)
        }
        return persons
    }
}
