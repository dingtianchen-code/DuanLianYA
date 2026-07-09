import Foundation
import SwiftData

@Model
final class Exercise {
    @Attribute(.unique) var id: UUID
    var name: String
    var category: String
    var difficulty: String
    var durationSeconds: Int
    var videoURLString: String
    var exerciseDescription: String
    var bodyAreaSummary: String

    init(
        id: UUID = UUID(),
        name: String,
        category: String,
        difficulty: String = "轻柔",
        durationSeconds: Int,
        videoURLString: String = "",
        exerciseDescription: String,
        bodyAreaSummary: String
    ) {
        self.id = id
        self.name = name
        self.category = category
        self.difficulty = difficulty
        self.durationSeconds = durationSeconds
        self.videoURLString = videoURLString
        self.exerciseDescription = exerciseDescription
        self.bodyAreaSummary = bodyAreaSummary
    }
}
