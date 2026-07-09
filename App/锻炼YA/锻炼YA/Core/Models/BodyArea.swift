import Foundation
import SwiftData

@Model
final class BodyArea {
    @Attribute(.unique) var id: UUID
    var name: String
    var summary: String
    var systemImage: String
    var sortOrder: Int

    init(
        id: UUID = UUID(),
        name: String,
        summary: String,
        systemImage: String = "figure.flexibility",
        sortOrder: Int = 0
    ) {
        self.id = id
        self.name = name
        self.summary = summary
        self.systemImage = systemImage
        self.sortOrder = sortOrder
    }
}
