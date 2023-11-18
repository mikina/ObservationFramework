import SwiftUI

@main
struct ObservationFrameworkApp: App {
    @State var store = Store()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(store)
        }
    }
}
