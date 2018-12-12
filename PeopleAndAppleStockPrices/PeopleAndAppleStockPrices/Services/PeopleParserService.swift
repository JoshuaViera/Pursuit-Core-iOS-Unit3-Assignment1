//
//  PeopleParserService.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/12/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

final class PeopleParserService {
    static func fetchUsers() -> [User] {
        var users = [User]()
        guard let path = Bundle.main.path(forResource: "userinfo", ofType: "json") else {
            print("resource not found")
            return users
        }
        guard let data = FileManager.default.contents(atPath: path) else {
            print("content not found")
            return users
        }
        do {
            let userData = try JSONDecoder().decode(UserData.self, from: data)
            users = userData.results
        } catch {
            print("decoding error: \(error)")
        }
        return users
    }
}
