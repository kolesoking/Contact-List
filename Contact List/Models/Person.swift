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
        
        let dataManeger = DataManage()
        var persons: [Person] = []
        
        for _ in 1...dataManeger.names.count {
            persons.append(
                Person(
                    name: dataManeger.names.randomElement() ?? "",
                    surname: dataManeger.surnames.randomElement() ?? "",
                    phone: dataManeger.phones.randomElement() ?? "",
                    email: dataManeger.emails.randomElement() ?? ""
                )
            )
        }
        
        return persons
    }
}



class DataManage {
    let names = [
        "Mary",
        "Lawrence",
        "Laura",
        "Justin",
        "Marilyn",
        "Betty",
        "Gene",
        "Marcus",
        "Richard",
        "Paul"
    ]
    
    let surnames = [
        "Chapman",
        "Norton",
        "Gaines",
        "Cain",
        "Wilson",
        "Sherman",
        "Benson",
        "Holt",
        "Pearson",
        "Cooper"
    ]
    
    let phones = [
        "7(495)878-88-27",
        "7(495)535-58-63",
        "7(495)098-20-93",
        "7(495)838-65-45",
        "7(495)132-05-01",
        "7(495)366-23-06",
        "7(495)056-05-09",
        "7(495)389-93-54"
    ]
    
    let emails = [
        "o@outlook.com",
        "hr6zdl@yandex.ru",
        "kaft93x@outlook.com",
        "dcu@yandex.ru",
        "19dn@outlook.com",
        "pa5h@mail.ru",
        "281av0@gmail.com",
        "8edmfh@outlook.com",
        "sfn13i@mail.ru",
        "g0orc3x1@outlook.com"
    ]
}

