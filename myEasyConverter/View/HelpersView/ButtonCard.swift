//
//  ButtonCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct ButtonCard: View {
    var body: some View {
        Button {
            print("Edit button was tapped")
        } label: {
            Image(systemName: "arrow.left.and.right")
        }
        .font(.title2)
    }
}

struct ButtonCard_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCard()
    }
}
