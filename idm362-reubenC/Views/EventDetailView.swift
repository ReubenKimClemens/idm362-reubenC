//
//  EventDetailView.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 3/20/25.
//


import SwiftUI

struct EventDetailView: View {
    var event: Event
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(event.eventName)
                    .font(.largeTitle)

                    .fontWeight(.black)
                    .foregroundColor(Color("textColor"))

                Text("Dates Selected:")
                    .font(.title)
                    .padding(.top)
                    .foregroundColor(Color("textColor"))
                
                ForEach(event.datesSelected, id: \.self) { date in
                    Text(formatDate(date))
                        .padding(5)
                        .background(Color("pColor"))

                        .cornerRadius(5)
                        .padding(.bottom, 2)
                }

                Text("Additional Description:")
                    .font(.title)
                    .padding(.top)
                    .foregroundColor(Color("textColor"))

                Text(event.additionalDescription)
                    .font(.body)
                    .foregroundColor(Color("textColor"))
                Spacer()
               
            }
            .navigationTitle("Event Details")
            .padding()
            
            
        }
    }

    

    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

#Preview {
    EventDetailView(event: Event(eventName: "Sample Event", datesSelected: [Date()], additionalDescription: "This is a sample event description"))
}
