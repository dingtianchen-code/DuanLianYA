import Foundation
import SwiftData

@Model
final class WorkoutSession {
    @Attribute(.unique) var id: UUID
    var date: Date
    var durationSeconds: Int
    var completed: Bool
    var exerciseCount: Int
    var note: String

    init(
        id: UUID = UUID(),
        date: Date = .now,
        durationSeconds: Int,
        completed: Bool = false,
        exerciseCount: Int,
        note: String = ""
    ) {
        self.id = id
        self.date = date
        self.durationSeconds = durationSeconds
        self.completed = completed
        self.exerciseCount = exerciseCount
        self.note = note
    }
}
