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
            ZStack {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .position(x: 200, y:100)
                Image("user-light")
                    .position(x:200, y:230)
                ZStack {
                    Text("Setting")
                        .font(.title)
                        .fontWeight(.black)
                        .tint(Color("bodyColor"))
                        .position(x: 80, y: 34)
                    Image(systemName: "chevron.right")
                        .position(x: 320, y: 34)
                }
                .frame(width: 368, height: 69)
                .background(Color("buttonColor"))
                .cornerRadius(10)
                .shadow(color: .white.opacity(0.2), radius: 1.5, x: 0, y: 4)
                .position(x: 200, y: 370)
                ZStack {
                    Text("Friends")
                        .font(.title)
                        .fontWeight(.black)
                        .tint(Color("bodyColor"))
                        .position(x: 80, y: 34)
                    Image(systemName: "chevron.right")
                        .position(x: 320, y: 34)
                }
                .frame(width: 368, height: 69)
                .background(Color("buttonColor"))
                .cornerRadius(10)
                .shadow(color: .white.opacity(0.2), radius: 1.5, x: 0, y: 4)
                .position(x: 200, y: 460)
                Text("History")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .position(x: 200, y:555)
                Rectangle()
                    .frame(width: 402, height: 1)
                    .background(Color("bodyColor"))
                    .position(x: 200, y:585)
                NavigationLink(destination: settingView()) {
                    ZStack {
                        Text("Friday Study")
                            .font(.title)
                            .fontWeight(.black)
                            .tint(Color("bodyColor"))
                            .position(x: 120, y: 50)
                        Text("With: Eli")
                            .font(.title2)
                            .fontWeight(.bold)
                            .tint(Color("bodyColor"))
                            .position(x: 75, y: 85)
                        Text("2/7/25")
                            .font(.title2)
                            .fontWeight(.bold)
                            .tint(Color("bodyColor"))
                            .position(x: 70, y: 115)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 102, height: 102)
                            .background(
                                Image("Forward Button")
                                    .resizable()
                                    .colorMultiply(Color("bodyColor"))
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 160, y: 50)
                            )
                    }
                    
                }
                .frame(width: 368, height: 139)
                .background(Color("buttonColor"))
                .cornerRadius(27)
                .shadow(color: .white.opacity(0.2), radius: 1.5, x: 0, y: 4)
                .position(x: 200, y: 675)
                
                NavigationLink(destination: joinTab()) {
                    ZStack {
                        Text("Roomie Brunch")
                            .font(.title)
                            .fontWeight(.black)
                            .tint(Color("bodyColor"))
                            .position(x: 120, y: 50)
                        Text("With: Colby, Max")
                            .font(.title2)
                            .fontWeight(.bold)
                            .tint(Color("bodyColor"))
                            .position(x: 115, y: 85)
                        Text("2/1/25")
                            .font(.title2)
                            .fontWeight(.bold)
                            .tint(Color("bodyColor"))
                            .position(x: 70, y: 115)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 102, height: 102)
                            .background(
                                Image("Forward Button")
                                    .resizable()
                                    .colorMultiply(Color("bodyColor"))
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 160, y: 50)
                            )
                    }
                }
                .frame(width: 368, height: 139)
                .background(Color("buttonColor"))
                .cornerRadius(27)
                .shadow(color: .white.opacity(0.2), radius: 1.5, x: 0, y: 4)
                .position(x: 200, y: 845)
            }
            .frame(width: 402, height: 874)
            .background(Color("bgColor"))
        }
    }
}

#Preview {
    profileView()
}
