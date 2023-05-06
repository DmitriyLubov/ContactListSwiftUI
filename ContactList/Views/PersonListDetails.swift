//
//  PersonListDetails.swift
//  ContactList
//
//  Created by Дмитрий Лубов on 06.05.2023.
//

import SwiftUI

struct PersonListDetails: View {
    
    let personList: [Person]
    
    var body: some View {
        NavigationStack {
            List(personList, id: \.self) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: Contacts.phone.imageName)
                    Label(person.email, systemImage: Contacts.email.imageName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonListDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonListDetails(personList: Person.getPersonsList())
    }
}
