import SwiftUI

struct ShowCard: View {
    let programa: Programa

    var body: some View {
        HStack(spacing: 0) {

            Rectangle()
                .fill(corPorTipo(programa.tipo))
                .frame(width: 6)

            HStack(spacing: 12) {

                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(corPorTipo(programa.tipo).opacity(0.2))
                        .frame(width: 80, height: 80)

                    Text(programa.emoji)
                        .font(.system(size: 40))
                }
                .padding(.leading, 12)

                VStack(alignment: .leading, spacing: 4) {
                    Text(programa.tipo)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(corPorTipo(programa.tipo))
                        .clipShape(Capsule())

                    Text(programa.nome)
                        .font(.headline)
                        .fontWeight(.bold)

                    Text(programa.genero)
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    HStack(spacing: 2) {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(programa.avaliacao) ? "star.fill" : "star")
                                .font(.caption)
                                .foregroundColor(index < Int(programa.avaliacao) ? .yellow : .gray)
                        }
                        Text(String(format: "%.1f", programa.avaliacao))
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundStyle(.tertiary)
                    .padding(.trailing, 16)
            }
            .padding(.vertical, 12)
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }

    func corPorTipo(_ tipo: String) -> Color {
        switch tipo {
        case "Anime":
            return .orange
        case "Desenho":
            return .blue
        case "Serie":
            return .purple
        default:
            return .gray
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        ShowCard(programa: naruto)
        ShowCard(programa: avatar)
        ShowCard(programa: strangerThings)
    }
    .padding()
}
