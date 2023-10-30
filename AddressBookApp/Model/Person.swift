//
//  Person.swift
//  AddressBookApp
//
//  Created by Chorrs on 25.10.23.
//

import Foundation

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
    static func getPersons() -> [Person] {
        var person: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumber = dataStore.phoneNumbers.shuffled()
        let email = dataStore.emails.shuffled()
        
        // определяем массив с минимальным кол-ом элем-ов для опр-ия количества итераций в цикле
        let iterationCount = min(names.count ,
                                 surnames.count ,
                                 phoneNumber.count ,
                                 email.count )
        
        for item in 0..<iterationCount {
            person.append(Person(
                name: names[item],
                surname: surnames[item],
                phoneNumber: phoneNumber[item],
                email: email[item]))
        }
        return person
    }
}


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


