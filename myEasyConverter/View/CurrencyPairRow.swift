//
//  CurrencyPairRow.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct CurrencyPairRow: View {
    var body: some View {
        ScrollView {
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 1)
                    .stroke(Color.blue, lineWidth: 1)
                    .frame(height: 110)
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 110)
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 110)
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 110)
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 110)
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 110)
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 110)
            }
            .padding()
        }
    }
}

struct CurrencyPairRow_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyPairRow()
    }
}
