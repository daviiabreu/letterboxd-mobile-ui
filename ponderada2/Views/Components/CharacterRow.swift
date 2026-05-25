import SwiftUI

struct CharacterRow: View {
    let nome: String
    let papel: String
    let emoji: String

    var body: some View {
        HStack(spacing: 16) {
            Text(emoji)
                .font(.system(size: 40))

            VStack(alignment: .leading, spacing: 4) {
                Text(nome)
                    .font(.headline)
                    .fontWeight(.semibold)

                Text(papel)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
    }
}

#Preview {
    VStack(spacing: 12) {
        CharacterRow(nome: "Davi Abreu", papel: "Protagonista", emoji: "😎")
        CharacterRow(nome: "Matheus Jorge", papel: "Ayrton Senna", emoji: "⚡")
        CharacterRow(nome: "Daniel PP Dias", papel: "Cozinheiro", emoji: "🔪")
        CharacterRow(nome: "Murilão", papel: "Professor Pokemon", emoji: "📚")
    }
    .padding()
}
