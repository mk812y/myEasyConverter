//
//  TopTextCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 31.10.2022.
//

import SwiftUI

struct TopTextCard: View {
    var textTitle: String
    
    var body: some View {
        VStack (alignment: .trailing) {
            Text(textTitle)
                .font(.caption)
        }
    }
}

struct TopTextCard_Previews: PreviewProvider {
    static var previews: some View {
        TopTextCard(textTitle: "у меня есть")
    }
}
