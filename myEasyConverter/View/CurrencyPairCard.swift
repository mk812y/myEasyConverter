//
//  CurrencyPairCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct CurrencyPairCard: View {
    var currencyPair: CurrencyPair
    @State var reversePair: Bool = false
    
    var currentValueAmountToRate: Double {
        currencyPair.currentAmount * currencyPair.currentRate
    }
    
    var currentRevertRate: Double {
        1 / currencyPair.currentRate
    }
    
    var body: some View {
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
                MainCurrencyCard(currencyPair: currencyPair)
            }
        }
    }
}

struct CurrencyPairCard_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyPairCard(currencyPair: ModelData().currencyPairs[0])
    }
}
