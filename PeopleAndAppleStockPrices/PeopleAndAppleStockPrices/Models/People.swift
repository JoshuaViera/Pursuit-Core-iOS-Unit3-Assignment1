//
//  People.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/12/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation


struct UserData : Codable {
    let results: [User]
}

struct User: Codable {
    let gender: String
    struct Name: Codable {
        let title: String
        let first: String
        let last: String
    }
    let name: Name
    
}
