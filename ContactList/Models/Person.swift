//
//  Person.swift
//  ContactList
//
//  Created by Дмитрий Лубов on 02.03.2023.
//

struct Person: Hashable {
    let name: String
    let surname: String
    
    let phones: String
    let emails: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        var personList: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let count = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phones: phones[index],
                emails: emails[index]
            )
            
            personList.append(person)
        }
        
        return personList
    }
    
    static func getPerson() -> Person {
        let name = DataManager.shared.names.randomElement() ?? ""
        let surname = DataManager.shared.surnames.randomElement() ?? ""
        let phone = DataManager.shared.phones.randomElement() ?? ""
        let email = DataManager.shared.emails.randomElement() ?? ""
        
        return Person(
            name: name,
            surname: surname,
            phones: phone,
            emails: email
        )
    }
}

enum Contacts {
    case person
    case phone
    case email
    
    var imageName: String {
        switch self {
        case .person:
            return "person.fill"
        case .phone:
            return "phone"
        case .email:
            return "tray"
        }
    }
}
