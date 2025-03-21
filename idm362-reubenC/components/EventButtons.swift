//
//  EventButtons.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 2/25/25.
//

import SwiftUI

struct EventButtons: View {
    
    let pTitle: String
    let pImage: String

    var body: some View {
        ZStack {
            Text(pTitle)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color("textColor"))
                .offset(x: -65)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 102, height: 102)
                .background(
                    Image(pImage)
                        .resizable()
                        .colorMultiply(Color("textColor"))
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 110)
                )
        }
        .frame(width: 368, height: 175)
        .background(Color("pColor"))
        .cornerRadius(27)
    }
}

#Preview {
    EventButtons(
        pTitle: "Plan an event",
        pImage: "Schedule"
    )
}
