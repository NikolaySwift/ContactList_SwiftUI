//
//  ContactListView.swift
//  ContactList
//
//  Created by NikolayD on 23.09.2024.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            NavigationLink(destination: ContactDetailsView(contact: contact)) {
                Text(contact.fullName)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactListView(contacts: DataStore.shared.getContacts())
}
