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
            VStack() {
                Text("Path Plans")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .tint(Color("textColor"))
                NavigationLink(destination: eventTab()) {
                    EventButtons(
                        pTitle: "Plan an event",
                        psubTitle: "Steps 0/4",
                        pImage: "Schedule",
                        pIsProgressBar: true
                    )
                }
                NavigationLink(destination: joinTab()) {
                    EventButtons(
                        pTitle: "Join an event",
                        psubTitle: "Enter the code!",
                        pImage: "joinEvent",
                        pIsProgressBar: false
                    )
                }
                
                NavigationLink(destination: resumeTab()) {
                    EventButtons(
                        pTitle: "Resume Plan",
                        psubTitle: "Steps 0/4",
                        pImage: "Resume",
                        pIsProgressBar: true
                    )
                    .opacity(0.5)
                }
                
            }
        }
    }
}

#Preview {
    homeView()
}
