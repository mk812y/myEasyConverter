//
//  CurrencyPairRow.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct CurrencyPairRow: View {
    var currencyPair: CurrencyPair
    var currencyPairs: [CurrencyPair] {
        ModelData().currencyPairs
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(currencyPairs, id: \.self) { currencyPair in
                    VStack {
                        CurrencyPairCard(currencyPair: currencyPair)
                    }
                }
            }
            .padding()
        }
    }
}

struct CurrencyPairRow_Previews: PreviewProvider {
    static var previews: some View {
        //        CurrencyPairRow()
        CurrencyPairRow(currencyPair: ModelData().currencyPairs[0])
            .environmentObject(ModelData())
    }
}
