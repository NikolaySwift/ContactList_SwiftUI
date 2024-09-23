//
//  ContactListInSectionView.swift)
//  ContactList
//
//  Created by NikolayD on 23.09.2024.
//

import SwiftUI

struct ContactListInSectionView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            Section(contact.fullName) {
                Label(contact.phoneNumber, systemImage: "phone")
                Label(contact.email, systemImage: "envelope")
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactListInSectionView(contacts: DataStore.shared.getContacts())
}
