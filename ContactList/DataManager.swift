//
//  DataManagerViewController.swift
//  ContactList
//
//  Created by Николай Христолюбов on 23.10.2022.
//


class DataManager {

    static let shared = DataManager()
    
    let names = ["Nikolai", "Andrew", "Sam", "Tom", "Jerry", "Ross", "Chandsler", "Frank", "Rob", "Gunter"]
    let surNames = ["Ivanov", "Smirnov", "Sidorov", "Gromov", "Dillan", "O'Shee", "Tolsen", "Nancig", "Pepel", "Glouwe"]
    let phoneNumber = ["12345", "23456", "34567", "45678", "56789", "67890", "78901", "89012", "90123"]
    let email = ["qqqqq", "wwwww", "eeeee", "ddddd", "lllll", "pppppp", "ooooo", "gggggg", "ssssss", "aaaaa"]
    
    private init () {}
}

