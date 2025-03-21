// eventTab.swift
import SwiftUI

struct eventTab: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewModel: EventViewModel
    
    @State private var eventName: String = ""
    @State private var selectedDates: Set<DateComponents> = []
    @State private var additionalDescription: String = ""
    @State private var textInput = ""
    @State private var items: [String] = []

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Event Name")) {
                    TextField("Enter event name", text: $eventName)
                }

                Section(header: Text("Select Available Days")) {
                    MultiDatePicker("Pick Dates", selection: $selectedDates)
                }
                Section(header: Text("Additional Description")) {
                    TextField("Enter event details", text: $additionalDescription)
                }

                Button(action: {
                    viewModel.addEvent(eventName: eventName, dates: selectedDates, events: items, description: additionalDescription)
                    eventName = ""
                    selectedDates = []
                    items = []
                    additionalDescription = ""

                    dismiss()
                }) {
                    Text("Save Event")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("pColor"))
                        .cornerRadius(10)
                }
            }
            .padding()
            .foregroundColor(Color("textColor"))
        }
    }

    private func addItem() {
        if !textInput.isEmpty {
            items.append(textInput)
            textInput = ""
        }
    }

    private func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

#Preview {
    eventTab()
        .environmentObject(EventViewModel())
}
