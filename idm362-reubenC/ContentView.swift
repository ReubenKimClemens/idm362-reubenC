//
//  ContentView.swift
//  IDM362-rc3299
//
//  Created by Reuben Clemens on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var squareColor = Color.black
    @State private var colorPicked = Color.black
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack(alignment: .center) {
            Text("IDM362 - hwk01")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding()
            
            headshotImage()
            Text("Headshot")
                .font(.title2)
                .padding(.bottom, 25.0)
            
            VStack(alignment: .center) {
                
                if colorScheme == .dark {
                    Rectangle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(squareColor)
                        .border(Color.white, width: 3)
                }
                else {
                    Rectangle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(squareColor)
                        .border(Color.black, width: 3)
                }
                    
                
                ColorPicker("Choose a color!", selection: $colorPicked)
                    .padding(.horizontal, 50.0)
                Button(action: {
                    squareColor = colorPicked
                }){
                    if colorScheme == .dark {
                        Text("Button to change square color")
                            .padding()
                            .foregroundColor(Color .black)
                            .background(.white)
                            .cornerRadius(10.0)
                    }
                    else {
                        Text("Button to change square color")
                            .padding()
                            .foregroundColor(Color .white)
                            .background(.black)
                            .cornerRadius(10.0)
                    }
                }
            }
            .padding(.horizontal, 50.0)
        }
    }
}
    

#Preview {
    ContentView()
}
