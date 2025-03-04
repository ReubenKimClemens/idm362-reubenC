//
//  EventButtons.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 2/25/25.
//

import SwiftUI

struct EventButtons: View {
    
    let pTitle: String
    let psubTitle: String
    let pImage: String
    let pIsProgressBar: Bool

    var body: some View {
        ZStack {
            Text(pTitle)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color("textColor"))
                .offset(x: -65, y: -30)
            Text(psubTitle)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("textColor"))
                .offset(x:-85, y: 15)
                .frame(width: 200)
            if pIsProgressBar {
                Rectangle()
                    .frame(width: 149, height: 15)
                    .foregroundColor(Color.white)
                    .cornerRadius(27)
                    .offset(x: -85, y: 40)
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 102, height: 102)
                .background(
                    Image(pImage)
                        .resizable()
                        .colorMultiply(Color("textColor"))
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 110, y: -7)
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
        psubTitle: "Steps 0/4",
        pImage: "Schedule",
        pIsProgressBar: true
    )
}
