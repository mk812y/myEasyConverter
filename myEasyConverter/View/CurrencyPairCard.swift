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
            VStack {
                ZStack {
                    RectangleCard()
                    HStack {
                        VStack {
                            Text("у меня есть")
                            HStack {
                                Text("100.00")
                                Text("TRY")
                                Text(flag1)
                            }
                            HStack {
                                Text("1 TRY")
                                Text("=")
                                Text("0.0537")
                                Text("USD")
                            }
                            .font(.caption)
                        }
                        
                        VStack {
                            Text("я получу")
                            HStack {
                                Text("5.37")
                                Text("USD")
                                Text(flag2)
                            }
                            HStack {
                                Text("1 USD")
                                Text("=")
                                Text("18.6138")
                                Text("TRY")
                            }
                            .font(.caption)
                        }
                    }
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
