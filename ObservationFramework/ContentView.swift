import SwiftUI

class Store: ObservableObject {
    @Published var counter = 0
}

struct ContentView: View {
    var store = Store()

    var body: some View {
        VStack {
            Text("Counter: \(store.counter)")

            Button {
                store.counter += 1
            } label: {
                Text("+")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
