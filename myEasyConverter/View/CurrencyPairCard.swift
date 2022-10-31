//
//  CurrencyPairCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct CurrencyPairCard: View {
    
    func countryFlag(countryCode: String) -> String {
        return String(String.UnicodeScalarView(
            countryCode.unicodeScalars.compactMap(
                { UnicodeScalar (127397 + $0.value) })))
    }
    
    var body: some View {
        let flag1 = countryFlag(countryCode: "TR")
        let flag2 = countryFlag(countryCode: "US")
        
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            RectangleCard()
            HStack {
                VStack (alignment: .leading) {
                    TopTextCard(textTitle: "у меня есть")
                    HStack {
                        Text("100.00")
                        Text("TRY")
                        Text(flag1)
                    }
                    RateCard(forex1: "TRY", currentRate: 0.0537, forex2: "USD")
                }
                ButtonCard()
                VStack (alignment: .leading) {
                    TopTextCard(textTitle: "я получу")
                    HStack {
                        Text("5.37")
                        Text("USD")
                        Text(flag2)
                    }
                    RateCard(forex1: "USD", currentRate: 18.6138, forex2: "TRY")
                }
            }
        }
    }
}

struct CurrencyPairCard_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyPairCard()
    }
}
