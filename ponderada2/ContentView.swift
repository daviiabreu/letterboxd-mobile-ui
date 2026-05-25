import SwiftUI

struct ContentView: View {
    let programas = [naruto, avatar, strangerThings]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(programas, id: \.nome) { programa in
                        NavigationLink(destination: ProgramaDetailView(programa: programa)) {
                            ShowCard(programa: programa)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationTitle("Meus Programas")
        }
    }
}

#Preview {
    ContentView()
}
