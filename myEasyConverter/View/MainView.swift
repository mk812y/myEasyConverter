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
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            CurrencyPairRow(currencyPair: currencyPair)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(currencyPair: ModelData().currencyPairs[0])
            .environmentObject(ModelData())
    }
}
