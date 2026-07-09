import Foundation
import SwiftData

@Model
final class Profile {
    @Attribute(.unique) var id: UUID
    var height: Double
    var weight: Double
    var age: Int
    var gender: String
    var trainingGoal: String
    var updatedAt: Date

    init(
        id: UUID = UUID(),
        height: Double = 0,
        weight: Double = 0,
        age: Int = 0,
        gender: String = "",
        trainingGoal: String = "每天照顾身体一点点",
        updatedAt: Date = .now
    ) {
        self.id = id
        self.height = height
        self.weight = weight
        self.age = age
        self.gender = gender
        self.trainingGoal = trainingGoal
        self.updatedAt = updatedAt
    }
}
