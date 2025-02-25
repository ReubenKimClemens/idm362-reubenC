//
//  joinTab.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 2/3/25.
//

import SwiftUI

struct joinTab: View {
    @State private var codeNum: String = ""

    var body: some View {
        ZStack {
            Text("Join")
                .font(.largeTitle)
                .fontWeight(.black)
                .position(x: 200, y:100)
                .tint(Color("textColor"))
            TextField("Code...", text: $codeNum)
                .multilineTextAlignment(.center)
                .border(Color("textColor"), width: 1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300)
            Text("Input Code Here!")
                .padding(.top,65.0)
                .tint(Color("textColor"))
                .opacity(0.8)
            
            Button("Next") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/print("Join Code: \(codeNum)")
            }
            .padding(.horizontal, 15.0)
            .frame(width: 200.0, height: 50.0)
            .background(Color("pColor"))
            .tint(Color("textColor"))
            .position(x: 200, y: 600)
            .cornerRadius(10.0)
        }
    }
}

#Preview {
    joinTab()
}
