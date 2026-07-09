import Foundation
import SwiftData

@Model
final class GrowthRecord {
    @Attribute(.unique) var id: UUID
    var date: Date
    var type: String
    var value: Double
    var note: String

    init(
        id: UUID = UUID(),
        date: Date = .now,
        type: String,
        value: Double,
        note: String
    ) {
        self.id = id
        self.date = date
        self.type = type
        self.value = value
        self.note = note
    }
}
