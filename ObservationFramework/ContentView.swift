import SwiftUI

@Observable
class Store {
    var counter: Double = 0
}

struct ContentView: View {
    @Environment(Store.self) var store
    var secondStore = Store()

    var body: some View {
        VStack {
            Text("Counter: \(store.counter)")

            Button {
                store.counter += 1
            } label: {
                Text("+")
            }
            .buttonStyle(.bordered)
            
            Text("Second store: \(secondStore.counter)")
            
            Subview(store: secondStore)
        }
        .padding()
    }
}

struct Subview: View {
    var store: Store

    var body: some View {
        @Bindable var store = store
        VStack {
            Text("Subview: \(store.counter)")

            Button {
                store.counter += 1
            } label: {
                Text("+")
            }
            .buttonStyle(.bordered)
            
            Slider(value: $store.counter, in: 0...10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(Store())
}
