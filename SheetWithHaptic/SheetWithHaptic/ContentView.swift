import SwiftUI

struct ContentView: View {
    @State private var showAddView = false
    
    var body: some View {
        Button {
            showAddView.toggle()
        } label: {
            Image(systemName: "plus")
                .font(.largeTitle).bold()
        }
        .onChange(of: showAddView) { oldValue, newValue in
            // evoke haptic when 'showAddView' is true
            if newValue {
                let generator = UIImpactFeedbackGenerator(style: .medium)
                generator.impactOccurred()
            }
        }
        .sheet(isPresented: $showAddView) {
            AddView()
        }
    }
}

#Preview {
    ContentView()
}
