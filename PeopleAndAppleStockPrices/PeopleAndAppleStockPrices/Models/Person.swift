//
//  Person.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/13/18.
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
    
    struct Location: Codable {
        let street: String
        let city: String
        let state: String
        let postcode: String
    }
    let location: Location
    let email: String
    struct Picture: Codable {
        let large: URL
        let medium: URL
        let thumbnail: URL
    }
    let picture: Picture
}

