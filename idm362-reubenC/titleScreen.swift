//
//  titleScreen.swift
//  idm362-rc3299
//
//  Created by Reuben Clemens on 1/27/25.
//

import SwiftUI

struct titleScreen: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 21) {
                Image("idm362-project-icon")
                    .frame(width: 234, height: 234)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                Text("Path Plans")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0.93, green: 0.93, blue: 0.93))
                //Add buttons for log in and sign in
                NavigationLink(destination: mainView()) {
                    Text("Log In")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 4)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding(.leading, 100)
            .padding(.trailing, 100)
            .padding(.top, 290)
            .padding(.bottom, 271)
            .background(Color(red: 0.09, green: 0.15, blue: 0.25))
        }
    }
}

#Preview {
    titleScreen()
}
