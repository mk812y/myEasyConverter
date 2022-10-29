//
//  myEasyConverterApp.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 27.10.2022.
//

import SwiftUI

@main
struct myEasyConverterApp: App {
    
    @StateObject private var model = ModelData()
    
    var body: some Scene {
        WindowGroup {
            MainView(currencyPair: ModelData().currencyPairs[0])
                .environmentObject(model)
        }
    }
}
