import SwiftUI

extension Animation {
    static let appGentle = Animation.easeInOut(duration: 0.35)
    static let appBloom = Animation.spring(response: 0.8, dampingFraction: 0.78)
    static let appFeedback = Animation.easeOut(duration: 0.45)
}
