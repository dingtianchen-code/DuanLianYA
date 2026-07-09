import Foundation
import SwiftData

@Model
final class EncouragementAnimation {
    @Attribute(.unique) var id: UUID
    var name: String
    var triggerType: String
    var animationURLString: String
    var durationSeconds: Int
    var text: String

    init(
        id: UUID = UUID(),
        name: String,
        triggerType: String,
        animationURLString: String = "",
        durationSeconds: Int = 3,
        text: String
    ) {
        self.id = id
        self.name = name
        self.triggerType = triggerType
        self.animationURLString = animationURLString
        self.durationSeconds = durationSeconds
        self.text = text
    }
}
