//
//  PersonListView.swift
//  ContactList
//
//  Created by Дмитрий Лубов on 06.05.2023.
//

import SwiftUI

struct PersonListView: View {
    
    let personList: [Person]
    
    var body: some View {
        NavigationStack {
            List(personList, id: \.self) { person in
                NavigationLink(destination: PersonView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(personList: Person.getPersonsList())
    }
}
