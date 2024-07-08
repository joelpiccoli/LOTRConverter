
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.purple)
            Text("Hello, world!").foregroundColor(.gray)
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
