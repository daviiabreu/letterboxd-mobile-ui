import SwiftUI

struct InfoBadge: View {
    let icone: String
    let titulo: String
    let valor: String
    let cor: Color

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icone)
                .font(.system(size: 24))
                .foregroundColor(cor)

            Text(valor)
                .font(.headline)
                .fontWeight(.bold)

            Text(titulo)
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(cor.opacity(0.15))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(cor.opacity(0.4), lineWidth: 1)
        )
        .cornerRadius(12)
    }
}

#Preview {
    HStack(spacing: 12) {
        InfoBadge(icone: "play.circle.fill", titulo: "Episódios", valor: "720", cor: .orange)
        InfoBadge(icone: "film.stack", titulo: "Temporadas", valor: "5", cor: .green)
        InfoBadge(icone: "checkmark.circle.fill", titulo: "Status", valor: "Concluído", cor: .blue)
    }
    .padding()
}
