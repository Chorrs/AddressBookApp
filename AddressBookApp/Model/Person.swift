//
//  Person.swift
//  AddressBookApp
//
//  Created by Chorrs on 25.10.23.
//

import Foundation

let dataStore = DataStore()

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}

extension Person {
    static func getPerson() -> [Person] {
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumber = dataStore.phoneNumbers.shuffled()
        let email = dataStore.emails.shuffled()
        var person: [Person] = []
        
        for item in 0..<names.count {
            person.append(Person(
                name: names[item],
                surname: surnames[item],
                phoneNumber: phoneNumber[item],
                email: email[item]))
        }
        return person
    }
}
    

//let names = dataStore.names.shuffled()
//let surnames = dataStore.surnames.shuffled()
//let phoneNumber = dataStore.phoneNumbers.shuffled()
//let email = dataStore.emails.shuffled()

// EXTENSION Person
// static func getPerson() -> [Person] {
//        for name in dataStore.names {
//            for surname in dataStore.surnames {
//                for phoneNumber in dataStore.phoneNumbers {
//                    for email in dataStore.emails {
//                        person.append(Person(
//                            name: name,
//                            surname: surname,
//                            phoneNumber: phoneNumber,
//                            email: email))
//                    }
//                }
//            }
//        }
//        return person
//    }


