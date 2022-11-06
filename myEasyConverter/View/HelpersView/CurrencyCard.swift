//
//  CurrencyCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 06.11.2022.
//

import SwiftUI

struct CurrencyCard: View {
    
    func countryFlag(countryCode: String) -> String {
        return String(String.UnicodeScalarView(
            countryCode.unicodeScalars.compactMap(
                { UnicodeScalar (127397 + $0.value) })))
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CurrencyCard_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyCard()
    }
}
