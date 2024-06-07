import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: TabBarItem = .generator
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(TabBarItem.allCases, id: \.self) { item in
                viewForTab(item)
                    .tabItem { Label(item.title, systemImage: item.icon) }
            }
        }
    }
    
    @ViewBuilder private func viewForTab(_ tab: TabBarItem) -> some View {
        switch tab {
        case .generator: TeamGeneratorView()
        case .teams: SavedTeamsView()
        }
    }
}

#Preview { TabBarView() }
