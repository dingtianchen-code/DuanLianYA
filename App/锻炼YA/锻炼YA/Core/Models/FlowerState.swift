import Foundation
import SwiftData

@Model
final class FlowerState {
    @Attribute(.unique) var id: UUID
    var date: Date
    var season: String
    var totalPetals: Int
    var openedPetals: Int
    var completion: Double
    var flowerData: String

    init(
        id: UUID = UUID(),
        date: Date = .now,
        season: String = "夏",
        totalPetals: Int = 100,
        openedPetals: Int,
        completion: Double,
        flowerData: String = "flower_50"
    ) {
        self.id = id
        self.date = date
        self.season = season
        self.totalPetals = totalPetals
        self.openedPetals = openedPetals
        self.completion = min(max(completion, 0), 1)
        self.flowerData = flowerData
    }
}
