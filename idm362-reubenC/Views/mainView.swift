//
//  mainView.swift
//  idm362-rc3299
//
//  Created by Reuben Clemens on 1/27/25.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        TabView {
            homeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color("bgColor"), for: .tabBar)

            profileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color("bgColor"), for: .tabBar)
        }
        .tint(Color("textColor"))
    }
}

#Preview {
    mainView()
}
