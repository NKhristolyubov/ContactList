//
//  Person.swift
//  ContactList
//
//  Created by Николай Христолюбов on 23.10.2022.
//

import Foundation

struct Person {
    
    
    
    let name: String
    let surName: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        ("\(name) \(surName)")
    }
    
    func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surmames = DataManager.shared.surNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumber.shuffled()
        let emails = DataManager.shared.email.shuffled()
        
        let count = min(names.count, surmames.count, phoneNumbers.count, emails.count)
        
        for index in 0..<count {
            
            let person = Person(
                name: names[index],
                surName: surmames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
    
}
