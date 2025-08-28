import SwiftUI

struct ContentView: View {
    @State private var startingTime = Date()
    @State private var opacity: Double = 0
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let elapsedTime = startingTime.distance(to: Date())
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.gradient(time: elapsedTime))
                .opacity(opacity)
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.easeIn(duration: 3)) {
                        opacity = 0.8
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
