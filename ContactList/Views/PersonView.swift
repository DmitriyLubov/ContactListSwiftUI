//
//  PersonView.swift
//  ContactList
//
//  Created by Дмитрий Лубов on 06.05.2023.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: Contacts.person.imageName)
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            .padding()
            Label(person.phone, systemImage: Contacts.phone.imageName)
            Label(person.email, systemImage: Contacts.email.imageName)
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.getPerson())
    }
}
