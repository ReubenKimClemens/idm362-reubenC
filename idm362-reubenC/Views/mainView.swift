import SwiftUI

struct mainView: View {
    @StateObject private var viewModel = EventViewModel()
    
    @State private var isEventPresented = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Path Plans")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .tint(Color("textColor"))
                
                Button(action: {
                    isEventPresented = true
                }) {
                    EventButtons(
                        pTitle: "Plan an event",
                        pImage: "Schedule"
                    )
                }
                .sheet(isPresented: $isEventPresented) {
                    eventTab()
                        .environmentObject(viewModel)
                }
                Spacer()

                List {
                    ForEach(viewModel.listOfEvents) { event in
                        NavigationLink(destination: EventDetailView(event: event)) {
                            VStack(alignment: .leading) {
                                Text(event.eventName)
                                    .font(.title)
                                    .fontWeight(.black)
                                    .foregroundColor(Color("textColor"))
                                Text("Dates: \(event.datesSelected.map { formatDate($0) }.joined(separator: ", "))")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .frame(height: 10)
                                Text("Description: \(event.additionalDescription)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(.top, 20)
                            }
                        }
                        
                    }
                    .onDelete(perform: deleteEvent)
                    .padding(0)
                }
                .frame(maxHeight: .infinity)
            }
        }
        .accentColor(Color("textColor"))
    }

    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }

    private func deleteEvent(at offsets: IndexSet) {
        viewModel.deleteEvent(at: offsets)
    }
}

#Preview {
    mainView()
}
