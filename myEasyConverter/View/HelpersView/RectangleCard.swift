//
//  RectangleCard.swift
//  myEasyConverter
//
//  Created by Михаил Куприянов on 30.10.2022.
//

import SwiftUI

struct RectangleCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray2), lineWidth: 1)
            .frame(height: 100)
            .padding()
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(height: 100)
            .padding()
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
