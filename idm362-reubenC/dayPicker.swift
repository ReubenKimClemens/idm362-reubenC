//
//  dayPicker.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 3/4/25.
//

import SwiftUI

struct dayPicker: View {
    
    @State var isOn = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("I'm not a robot")
        }

    }
}

#Preview {
    dayPicker()
}
