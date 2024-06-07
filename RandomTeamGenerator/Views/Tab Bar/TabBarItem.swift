import SwiftUI

enum TabBarItem: String, CaseIterable {
    case generator, teams
    
    var title: String { rawValue.capitalized }
    
    var icon: String {
        switch self {
        case .generator: "hammer.fill"
        case .teams: "heart.fill"
        }
    }
}
