//
//  CurrencyCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 06.11.2022.
//

import SwiftUI

struct CurrencyCard: View {
    let currencyAmount: Double
    let currency: String
    let shortCountryCode: String
    
    func countryFlag(countryCode: String) -> String {
        return String(String.UnicodeScalarView(
            countryCode.unicodeScalars.compactMap(
                { UnicodeScalar (127397 + $0.value) })))
    }
    
    var body: some View {
        let flag = countryFlag(countryCode: shortCountryCode)
        
        HStack {
            Text(String(format: "%.2f", currencyAmount))
            Text("\(currency)")
            Text(flag)
        }
    }
}

struct CurrencyCard_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyCard(currencyAmount: 100, currency: "USD", shortCountryCode: "US")
    }
}
