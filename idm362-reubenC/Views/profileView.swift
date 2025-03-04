//
//  profileView.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 2/10/25.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        NavigationView() {
            ScrollView {
                VStack() {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .padding(.top, 0.0)
                    Image("userProfile")
                    
                    VStack(spacing: 20) {
                        profileButtons(pTitle: "Setting")
                        profileButtons(pTitle: "Friends")
                    }
                    .padding(.top, 20.0)
                    .padding(.bottom, 30.0)
                    
                    Text("History")
                        .font(.largeTitle)
                        .fontWeight(.black)
                    VStack(spacing: 20) {
                        profileEventTabs(
                            pTitle: "Friday Study",
                            pText: "Eli                ",
                            pDate: "2/1/25"
                        )
                        profileEventTabs(
                            pTitle: "Roomie Brunch",
                            pText: "Colby, Max",
                            pDate: "2/1/25"
                        )
                        profileEventTabs(
                            pTitle: "Roomie Brunch",
                            pText: "Colby, Max",
                            pDate: "2/1/25"
                        )
                    }
                }
                .frame(width: 402, height: 1000)
            }
            
        }
    }
}

#Preview {
    profileView()
}
