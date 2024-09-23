//
//  ContentView.swift
//  ContactList
//
//  Created by NikolayD on 23.09.2024.
//

import SwiftUI

struct ContentView: View {
    private let contacts = DataStore.shared.getContacts()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                ContactListInSectionView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContentView()
}
