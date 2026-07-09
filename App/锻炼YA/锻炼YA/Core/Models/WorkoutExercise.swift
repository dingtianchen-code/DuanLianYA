import Foundation
import SwiftData

@Model
final class WorkoutExercise {
    @Attribute(.unique) var id: UUID
    var sessionID: UUID
    var exerciseID: UUID
    var orderIndex: Int
    var durationSeconds: Int
    var completed: Bool

    init(
        id: UUID = UUID(),
        sessionID: UUID,
        exerciseID: UUID,
        orderIndex: Int,
        durationSeconds: Int,
        completed: Bool = false
    ) {
        self.id = id
        self.sessionID = sessionID
        self.exerciseID = exerciseID
        self.orderIndex = orderIndex
        self.durationSeconds = durationSeconds
        self.completed = completed
    }
}
