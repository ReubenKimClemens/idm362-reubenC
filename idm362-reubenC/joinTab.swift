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
        VStack {
            Text("Join")
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(.bottom, 200.0)
                .tint(Color("textColor"))
            VStack {
                TextField("Code...", text: $codeNum)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 25))
                    .foregroundColor(Color("textColor"))
                    .frame(width: 315, height: 76)
                    .background(Color(red: 0.07, green: 0.07, blue: 0.07).opacity(0.05))
                    .cornerRadius(23)
                    .overlay(
                      RoundedRectangle(cornerRadius: 23)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.07, green: 0.07, blue: 0.07), lineWidth: 1)
                    )
                Text("Input Code Here!")
                    .tint(Color("textColor"))
                    .opacity(0.8)
            }
            Spacer()
            Button("Next") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/print("Join Code: \(codeNum)")
            }
            .font(.system(size: 25, weight: .bold))
            .frame(width: 250.0, height: 70.0)
            .background(Color("pColor"))
            .tint(Color("textColor"))
            .padding(.horizontal, 0)
            .padding(50.0)
            .cornerRadius(20)
        }
    }
}

#Preview {
    joinTab()
}
