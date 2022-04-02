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



class DataManage {
    let names = [
        "Mary", "Lawrence", "Laura","Justin", "Marilyn",
        "Betty", "Gene","Marcus","Richard", "Paul"
    ]
    
    let surnames = [
        "Chapman", "Norton", "Gaines", "Cain", "Wilson",
        "Sherman", "Benson", "Holt", "Pearson", "Cooper"
    ]
    
    let phones = [
        "7(495)878-88-27", "7(495)535-58-63",
        "7(495)098-20-93", "7(495)838-65-45",
        "7(495)132-05-01", "7(495)366-23-06",
        "7(495)056-05-09", "7(495)389-93-54",
        "7(495)300-90-14", "7(495)001-23-12"
        
    ]
    
    let emails = [
        "o@outlook.com", "hr6zdl@yandex.ru",
        "kaft93x@outlook.com", "dcu@yandex.ru",
        "19dn@outlook.com", "pa5h@mail.ru",
        "281av0@gmail.com", "8edmfh@outlook.com",
        "sfn13i@mail.ru", "g0orc3x1@outlook.com"
    ]
}

