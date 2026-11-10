
import SwiftUI

struct GlassCard<Content: View>: View {

    @ViewBuilder var content: Content

    var body: some View {

        VStack(
            alignment: .leading,
            spacing: 12
        ) {
            content
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding(20)
        .background(
            .ultraThinMaterial,
            in: RoundedRectangle(
                cornerRadius: 28,
                style: .continuous
            )
        )
        .overlay {
            RoundedRectangle(
                cornerRadius: 28,
                style: .continuous
            )
            .stroke(
                .white.opacity(0.18),
                lineWidth: 1
            )
        }
    }
}
