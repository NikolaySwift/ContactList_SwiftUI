//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by NikolayD on 23.09.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 120, height: 120)
                .padding()
                Spacer()
            }
            
            Label(contact.phoneNumber, systemImage: "phone")
            Label(contact.email, systemImage: "envelope")
        }
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    ContactDetailsView(contact: DataStore.shared.getContacts()[0])
}
