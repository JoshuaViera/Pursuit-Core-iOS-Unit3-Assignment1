//
//  PeopleVC.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/12/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class PeopleVC: UIViewController {
    
    private var users = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        users = PeopleParserService.fetchUsers()
        print("there are \(users.count) users")
    }
}
