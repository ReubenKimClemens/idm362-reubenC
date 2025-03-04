//
//  profileEventTabs.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 3/4/25.
//

import SwiftUI

struct profileEventTabs: View {
    
    let pTitle: String
    let pText: String
    let pDate: String
    
    var body: some View {
        ZStack {
            Text(pTitle)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color("textColor"))
                .offset(x: -55, y: -30)
                .frame(width: 240, height: 50)
            HStack {
                Text("With:")
                Text(pText)
            }
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(Color("textColor"))
            .frame(width: 200, height: 30)
            .offset(x:-65, y: 0)
            Text(pDate)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("textColor"))
                .offset(x:-110, y: 25)
                .frame(width: 200)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 102, height: 102)
                .background(
                    Image("forwardButton")
                        .resizable()
                        .colorMultiply(Color("textColor"))
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 110, y: 0)
                )
        }
        .frame(width: 368, height: 139)
        .background(Color("pColor"))
        .cornerRadius(27)
    }
}

#Preview {
    profileEventTabs(
        pTitle: "Roomie Brunch",
        pText: "Colby, Max",
        pDate: "2/1/25"
    )
}
