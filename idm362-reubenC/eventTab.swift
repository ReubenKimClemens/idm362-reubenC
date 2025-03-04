//
//  eventTab.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 2/3/25.
//

import SwiftUI

struct eventTab: View {
    var body: some View {
        VStack {
            Text("Planning")
                .font(.largeTitle)
                .fontWeight(.black)
                .tint(Color("textColor"))
            VStack {
                ZStack {
                    Text("2: Select a time")
                        .font(.title)
                        .fontWeight(.black)
                        .padding(.trailing, 150.0)
                        .tint(Color("textColor"))
                    Image(systemName: "chevron.right")
                        .padding(.leading, 300.0)
                }
                .frame(width: 450, height: 69)
                .background(Color("pColor"))
                .border(Color("textColor"), width: 1)
            }
            
        }
    }
}

#Preview {
    eventTab()
}
