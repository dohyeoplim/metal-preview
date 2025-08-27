import SwiftUI

struct ContentView: View {
    @State private var startingTime = Date()
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let elapsedTime = startingTime.distance(to: Date())
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.grainGradient(time: elapsedTime))
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
