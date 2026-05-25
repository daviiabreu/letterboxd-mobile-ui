import SwiftUI

struct AvatarDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                ZStack(alignment: .bottomLeading) {
                    LinearGradient(
                        colors: [.blue, .blue.opacity(0.6)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(height: 300)

                    Text(avatar.emoji)
                        .font(.system(size: 120))
                        .frame(maxWidth: .infinity)
                        .offset(y: -40)

                    LinearGradient(
                        colors: [.clear, .black.opacity(0.6)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: 300)

                    VStack(alignment: .leading, spacing: 8) {
                        Text(avatar.tipo)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .background(Color.black.opacity(0.5))
                            .clipShape(Capsule())

                        Text(avatar.nome)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                    }
                    .padding()
                }

                VStack(alignment: .leading, spacing: 20) {

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Sinopse")
                            .font(.title2)
                            .fontWeight(.bold)

                        Text(avatar.sinopse)
                            .font(.body)
                            .foregroundColor(.secondary)
                            .lineSpacing(4)
                    }


                    HStack(spacing: 12) {
                        InfoBadge(
                            icone: "play.circle.fill",
                            titulo: "Episódios",
                            valor: "\(avatar.episodios)",
                            cor: .orange
                        )

                        InfoBadge(
                            icone: "film.stack",
                            titulo: "Temporadas",
                            valor: "\(avatar.temporadas)",
                            cor: .green
                        )

                        InfoBadge(
                            icone: "checkmark.circle.fill",
                            titulo: "Status",
                            valor: avatar.status,
                            cor: .blue
                        )
                    }


                    VStack(alignment: .leading, spacing: 12) {
                        Text("Personagens Principais")
                            .font(.title2)
                            .fontWeight(.bold)

                        ForEach(avatar.personagens, id: \.nome) { personagem in
                            CharacterRow(
                                nome: personagem.nome,
                                papel: personagem.papel,
                                emoji: personagem.emoji
                            )
                        }
                    }

                    Button(action: {
                    }) {
                        Text("Ver Todos Os Episódios")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(50)
                    }
                    .padding(.top, 8)
                }
                .padding()
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AvatarDetailView()
    }
}
