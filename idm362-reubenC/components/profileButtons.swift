//
//  profileButtons.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 3/4/25.
//

import SwiftUI

struct profileButtons: View {
    
    let pTitle: String
    
    var body: some View {
        HStack() {
            Text(pTitle)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color("textColor"))
                .padding(.leading, 20.0)
            Image(systemName: "chevron.right")
                .position(x:200, y:34.5)
        }
        .frame(width: 368, height: 69)
        .background(Color("pColor"))
        .cornerRadius(10)
    }
}

#Preview {
    profileButtons(
        pTitle: "Setting"
        )
}
