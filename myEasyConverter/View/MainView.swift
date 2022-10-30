//
//  MainView.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 27.10.2022.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var modelData: ModelData
    var currencyPair: CurrencyPair
    var currencyPairs: [CurrencyPair] {
        modelData.currencyPairs
    }
    
    var body: some View {
        VStack {
            ForEach(currencyPairs, id: \.self) { currencyPair in
                VStack {
                    HStack {
                        Text(String(format: "%.2f", currencyPair.currentAmount))
                        Text("\(currencyPair.forex1)")
                        VStack {
                            Image(systemName: "arrow.left.and.right")
                            Text(String(format: "%.4f", currencyPair.currentRate))
                        }
                        Text(String(format: "%.2f", currencyPair.currentAmount * currencyPair.currentRate))
                        Text("\(currencyPair.forex2)")
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(currencyPair: ModelData().currencyPairs[0])
            .environmentObject(ModelData())
    }
}
