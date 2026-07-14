import Foundation

enum DuckPosture: String, CaseIterable, Identifiable, Hashable {
    case standing
    case sitting
    case lying

    var id: Self { self }

    var displayName: String {
        switch self {
        case .standing: "Standing"
        case .sitting: "Sitting"
        case .lying: "Lying"
        }
    }

    var careName: String {
        switch self {
        case .standing: "站着照顾身体"
        case .sitting: "坐着照顾身体"
        case .lying: "躺着照顾身体"
        }
    }

    var guidance: String {
        switch self {
        case .standing: "适合身体状态较好时的轻松活动"
        case .sitting: "在椅子上也能安心完成的身体照顾"
        case .lying: "让身体在更放松的姿势中慢慢活动"
        }
    }

    /// The product-defined state revealed by a left swipe.
    var stateAfterSwipingLeft: Self {
        switch self {
        case .standing: .sitting
        case .sitting: .lying
        case .lying: .standing
        }
    }

    /// The product-defined state revealed by a right swipe.
    var stateAfterSwipingRight: Self {
        switch self {
        case .standing: .lying
        case .sitting: .standing
        case .lying: .sitting
        }
    }
}
