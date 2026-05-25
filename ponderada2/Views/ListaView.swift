import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    NavigationLink(destination: NarutoDetailView()) {
                        ShowCard(programa: naruto)
                    }
                    .buttonStyle(PlainButtonStyle())

                    NavigationLink(destination: AvatarDetailView()) {
                        ShowCard(programa: avatar)
                    }
                    .buttonStyle(PlainButtonStyle())

                    NavigationLink(destination: StrangerDetailView()) {
                        ShowCard(programa: strangerThings)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding()
            }
            .navigationTitle("Programas")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ListaView()
}
