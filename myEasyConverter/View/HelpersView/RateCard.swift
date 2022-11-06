//
//  RateCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct RateCard: View {
    var forex1: String
    var currentRate: Double
    var forex2: String
    
    var body: some View {
        HStack {
            Text("1 \(forex1)")
            Text("=")
            Text(String(format: "%.4f", currentRate))
            Text("\(forex2)")
        }
        .font(.caption)
    }
}

struct RateCard_Previews: PreviewProvider {
    static var previews: some View {
        RateCard(forex1: "USD", currentRate: 18.6138, forex2: "TRY")
    }
}
