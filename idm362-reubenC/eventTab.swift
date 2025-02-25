//
//  eventTab.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 2/3/25.
//

import SwiftUI

struct eventTab: View {
    var body: some View {
        ZStack {
            Text("Planning")
                .font(.largeTitle)
                .fontWeight(.black)
                .tint(Color("textColor"))
                .position(x: 200, y:100)
            ZStack {
                ZStack {
                    Text("1: Select a time")
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
                .position(x: 200, y: 390)
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
                .position(x: 200, y: 459)
            }
            
        }
    }
}

#Preview {
    eventTab()
}
