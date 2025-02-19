//
//  homeView.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 2/4/25.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        NavigationView() {
            ZStack {
                Text("Path Plans")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .position(x: 200, y:100)
                NavigationLink(destination: eventTab()) {
                    ZStack {
                        Text("Plan an event")
                            .font(.title)
                            .fontWeight(.black)
                            .tint(Color("bodyColor"))
                            .position(x: 120, y: 50)
                        Text("Steps 0/4")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .tint(Color("bodyColor"))
                            .position(x: 100, y: 110)
                        Rectangle()
                            .tint(Color("pbarColor"))
                            .frame(width: 149, height: 15)
                            .background(Color(red: 0.46, green: 0.49, blue: 0.55))
                            .cornerRadius(27)
                            .position(x: 100, y: 135)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 102, height: 102)
                            .background(
                                Image("Schedule")
                                    .resizable()
                                    .colorMultiply(Color("bodyColor"))
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 160, y: 50)
                            )
                    }
                    
                }
                .frame(width: 368, height: 175)
                .background(Color("buttonColor"))
                .cornerRadius(27)
                .shadow(color: .white.opacity(0.2), radius: 1.5, x: 0, y: 4)
                .position(x: 200, y: 240)
                
                NavigationLink(destination: joinTab()) {
                    ZStack {
                        Text("Join an event")
                            .font(.title)
                            .fontWeight(.black)
                            .tint(Color("bodyColor"))
                            .position(x: 120, y: 50)
                        Text("Have the code \nor link!")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .tint(Color("bodyColor"))
                            .position(x: 115, y: 110)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 102, height: 102)
                            .background(
                                Image("joinEvent")
                                    .resizable()
                                    .colorMultiply(Color("bodyColor"))
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 160, y: 50)
                            )
                    }
                }
                .frame(width: 368, height: 175)
                .background(Color("buttonColor"))
                .cornerRadius(27)
                .shadow(color: .white.opacity(0.2), radius: 1.5, x: 0, y: 4)
                
                NavigationLink(destination: resumeTab()) {
                    ZStack {
                        Text("Resume plan")
                            .font(.title)
                            .fontWeight(.black)
                            .tint(Color("bodyColor"))
                            .position(x: 120, y: 35)
                        Text("Steps 1/4")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .tint(Color("bodyColor"))
                            .position(x: 100, y: 85)
                        Rectangle()
                            .tint(Color("pbarColor"))
                            .frame(width: 149, height: 15)
                            .background(Color(red: 0.46, green: 0.49, blue: 0.55))
                            .cornerRadius(27)
                            .position(x: 100, y: 110
                            )
                        Rectangle()
                            .tint(Color("bodyColor"))
                            .frame(width: 38, height: 15)
                            .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                            .cornerRadius(27)
                            .position(x: 45, y: 110)
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
                .position(x: 200, y: 618)
            }
            .frame(width: 402, height: 874)
            .background(Color("bgColor"))
        }
    }
}

#Preview {
    homeView()
}
