//
//  CurrencyPairCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct CurrencyPairCard: View {
    var currencyPair: CurrencyPair
    
    func countryFlag(countryCode: String) -> String {
        return String(String.UnicodeScalarView(
            countryCode.unicodeScalars.compactMap(
                { UnicodeScalar (127397 + $0.value) })))
    }
    
    var currentValueAmountToRate: Double {
        currencyPair.currentAmount * currencyPair.currentRate
    }
    
    var currentRevertRate: Double {
        1 / currencyPair.currentRate
    }
    
    var body: some View {
        let flag1 = countryFlag(countryCode: "TR")
        let flag2 = countryFlag(countryCode: "US")
        
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            RectangleCard(sizeHeight: 70)
            
            VStack {
                HStack {
                    VStack (alignment: .leading){
                        TopTextCard(textTitle: "у меня есть")
                    }
                    VStack {
                        TopTextCard(textTitle: "я получу")
                    }
                }
                HStack {
                    VStack (alignment: .leading) {
                        HStack {
                            Text(String(format: "%.2f", currencyPair.currentAmount))
                            Text("\(currencyPair.forex1)")
                            Text(flag1)
                        }
                        RateCard(
                            forex1: "\(currencyPair.forex1)",
                            currentRate: currencyPair.currentRate,
                            forex2: "\(currencyPair.forex2)"
                        )
                    }
                    ButtonCard()
                    VStack (alignment: .leading) {
                        HStack {
                            Text(String(format: "%.2f", currentValueAmountToRate))
                            Text("\(currencyPair.forex2)")
                            Text(flag2)
                        }
                        RateCard(
                            forex1: "\(currencyPair.forex2)",
                            currentRate: currentRevertRate,
                            forex2: "\(currencyPair.forex1)"
                        )
                    }
                }
            }
        }
    }
}

struct CurrencyPairCard_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyPairCard(currencyPair: ModelData().currencyPairs[0])
    }
}
