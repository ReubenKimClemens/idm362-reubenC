//
//  headshotImage.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 1/21/25.
//

import SwiftUI

struct headshotImage: View {
    var body: some View {
        Image("headshot")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    headshotImage()
}
