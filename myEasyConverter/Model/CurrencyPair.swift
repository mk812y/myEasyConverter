//
//  CurrencyPair.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 29.10.2022.
//

import Foundation
import SwiftUI

struct CurrencyPair: Hashable, Codable, Identifiable {
    var id: Int
    var forex1: String
    var forex2: String
    var sortedFix: Bool
    var sortedID: Int
    var currentRate: Double
    var currentAmount: Double
    var dateRequest: String
}
