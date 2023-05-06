//
//  ContentView.swift
//  ContactList
//
//  Created by Дмитрий Лубов on 06.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let personList = Person.getPersonsList()
    
    var body: some View {
        TabView {
            PersonListView(personList: personList)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            PersonListDetails(personList: personList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
