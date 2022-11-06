//
//  MainCurrencyCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 06.11.2022.
//

import SwiftUI

struct MainCurrencyCard: View {
    var currencyPair: CurrencyPair
    @State var reversePair: Bool = false
    
    var currentValueAmountToRate: Double {
        currencyPair.currentAmount * currencyPair.currentRate
    }
    
    var currentRevertRate: Double {
        1 / currencyPair.currentRate
    }
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                CurrencyCard(
                    currencyAmount: reversePair ? currentValueAmountToRate : currencyPair.currentAmount,
                    currency: reversePair ? currencyPair.forex2 : currencyPair.forex1,
                    shortCountryCode: reversePair ? String(currencyPair.forex2.dropLast()) : String(currencyPair.forex1.dropLast())
                )
                RateCard(
                    forex1: reversePair ? currencyPair.forex2 : currencyPair.forex1,
                    currentRate: reversePair ? currentRevertRate : currencyPair.currentRate,
                    forex2: reversePair ? currencyPair.forex1 : currencyPair.forex2
                )
            }
            Button {
                reversePair.toggle()
            } label: {
                Image(systemName: "arrow.left.and.right")
            }
            .font(.title2)
            VStack (alignment: .leading) {
                CurrencyCard(
                    currencyAmount: reversePair ? currencyPair.currentAmount : currentValueAmountToRate,
                    currency: reversePair ? currencyPair.forex1 : currencyPair.forex2,
                    shortCountryCode: reversePair ? String(currencyPair.forex1.dropLast()) : String(currencyPair.forex2.dropLast())
                )
                RateCard(
                    forex1: reversePair ? currencyPair.forex1 : currencyPair.forex2,
                    currentRate: reversePair ? currencyPair.currentRate : currentRevertRate,
                    forex2: reversePair ? currencyPair.forex2 : currencyPair.forex1
                )
            }
        }
    }
}

struct MainCurrencyCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCurrencyCard(currencyPair: ModelData().currencyPairs[0])
    }
}
