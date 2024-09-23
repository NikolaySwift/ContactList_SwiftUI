//
//  DataStore.swift
//  ContactList
//
//  Created by NikolayD on 23.09.2024.
//

final class DataStore {
    
    static let shared = DataStore()
    
    private let names = [
        "John",
        "Sharon",
        "Aaron",
        "Steven",
        "Nicola",
        "Ted",
        "Bruce",
        "Carl",
        "Allan",
        "Tim"
    ]
    
    private let surnames = [
        "Murphy",
        "Jankin",
        "Williams",
        "Black",
        "Robertson",
        "Butler",
        "Isaacson",
        "Smith",
        "Pennyworth",
        "Dow"
    ]
    
    private let phones = [
        "111111111",
        "222222222",
        "333333333",
        "444444444",
        "555555555",
        "666666666",
        "777777777",
        "888888888",
        "999999999",
        "000000000"
    ]
    
    private let emails = [
        "aaa@mail.ru",
        "bbb@mail.ru",
        "ccc@mail.ru",
        "ddd@mail.ru",
        "eee@mail.ru",
        "fff@mail.ru",
        "ggg@mail.ru",
        "hhh@mail.ru",
        "iii@mail.ru",
        "jjj@mail.ru"
    ]
    
    private init() {}
    
    func getContacts() -> [Person] {
        var personList: [Person] = []
        
        let shuffledNames = names.shuffled()
        let shuffledSurnames = surnames.shuffled()
        let shuffledPhones = phones.shuffled()
        let shuffledEmails = emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        (0..<iterationCount).forEach { index in
            personList.append(
                Person(
                    name: shuffledNames[index],
                    surname: shuffledSurnames[index],
                    phoneNumber: shuffledPhones[index],
                    email: shuffledEmails[index]
                )
            )
        }
        
        return personList
    }
}
