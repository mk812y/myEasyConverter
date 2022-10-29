//
//  ModelData.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 29.10.2022.
//

import SwiftUI

class ModelData: ObservableObject {
    
    @Published var currencyPairs: [CurrencyPair] = load("testRates.json")
    
    // MARK: - Publishers
    
    @Published var isRunning = false
    
    // MARK: - Methods
    
    func playPauseTimer() {
        isRunning.toggle()
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
