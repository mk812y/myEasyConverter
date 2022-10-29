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
                        Text("\(currencyPair.forex1) / \(currencyPair.forex2)")
                        Text("\(currencyPair.currentRate)")
                        Text("\(currencyPair.currentAmount)")
                        Text("\(currencyPair.dateRequest)")
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
