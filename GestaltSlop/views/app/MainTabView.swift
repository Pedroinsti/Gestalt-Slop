import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {

            TweaksHubView()
                .tabItem {
                    Label(
                        "Tweaks",
                        systemImage: "square.grid.2x2.fill"
                    )
                }

            LogView()
                .tabItem {
                    Label(
                        "Logs",
                        systemImage: "terminal.fill"
                    )
                }

            SettingsView()
                .tabItem {
                    Label(
                        "Settings",
                        systemImage: "gearshape.fill"
                    )
                }
        }
        .tint(.purple)
    }
}
