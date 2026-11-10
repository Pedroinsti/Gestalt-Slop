
import SwiftUI

struct TweaksHubView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {

                    Text("Tweaks")
                        .font(.largeTitle.bold())

                    Text("Configuration modules")
                        .foregroundStyle(.secondary)

                    NavigationLink {
                        GestaltView()
                    } label: {
                        tweakCard(
                            title: "MobileGestalt",
                            subtitle: "System configuration",
                            icon: "iphone"
                        )
                    }
                    .buttonStyle(.plain)

                    NavigationLink {
                        PosterView()
                    } label: {
                        tweakCard(
                            title: "PosterBoard",
                            subtitle: "Poster configuration",
                            icon: "rectangle.portrait"
                        )
                    }
                    .buttonStyle(.plain)

                    NavigationLink {
                        SantanderView()
                    } label: {
                        tweakCard(
                            title: "HouseArrest",
                            subtitle: "Application storage",
                            icon: "folder"
                        )
                    }
                    .buttonStyle(.plain)
                }
                .padding()
            }
            .navigationTitle("Tweaks")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    private func tweakCard(
        title: String,
        subtitle: String,
        icon: String
    ) -> some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.title2)
                .frame(width: 48, height: 48)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 14))

            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)

                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white.opacity(0.15), lineWidth: 1)
        }
    }
}
