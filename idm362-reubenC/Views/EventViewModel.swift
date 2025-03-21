//
//  EventViewModel.swift
//  idm362-reubenC
//
//  Created by Reuben Clemens on 3/20/25.
//


// EventViewModel.swift
import SwiftUI

struct Event: Codable, Identifiable {
    var id = UUID()
    var eventName: String
    var datesSelected: [Date]
    var events: [String] = []
    var additionalDescription: String
}

class EventViewModel: ObservableObject {
    @Published var listOfEvents: [Event] = [] {
        didSet {
            saveEvents()
        }
    }

    private let eventsKey = "savedEvents"

    init() {
        loadEvents()
    }

    private func saveEvents() {
        if let encoded = try? JSONEncoder().encode(listOfEvents) {
            UserDefaults.standard.set(encoded, forKey: eventsKey)
        }
    }

    private func loadEvents() {
        if let savedData = UserDefaults.standard.data(forKey: eventsKey),
           let decodedEvents = try? JSONDecoder().decode([Event].self, from: savedData) {
            listOfEvents = decodedEvents
        }
    }

    func addEvent(eventName: String, dates: Set<DateComponents>, events: [String] = [], description: String) {
        let convertedDates = dates.compactMap { Calendar.current.date(from: $0) }
        let newEvent = Event(eventName: eventName, datesSelected: convertedDates, events: events, additionalDescription: description)
        listOfEvents.append(newEvent)
    }

    func deleteEvent(at offsets: IndexSet) {
        listOfEvents.remove(atOffsets: offsets)
    }
}
