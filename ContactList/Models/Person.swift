//
//  Person.swift
//  ContactList
//
//  Created by NikolayD on 23.09.2024.
//
import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
