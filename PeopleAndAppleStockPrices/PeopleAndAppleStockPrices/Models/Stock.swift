//
//  Stock.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/12/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation


struct Stock : Codable {
    let date : String
    let open : Double
    let close: Double
}
