import Foundation
import Observation

@Observable
final class GrowthViewModel {
    var monthTitle = "11月身体之花"
    var monthlyCareDays = 14
    var daysInMonth = 30
    var streakDays = 6
    var flowerGrowthRecords = FlowerHistoryItem.sample
    var bodyAreaCare = BodyAreaCareItem.sample
    var workoutHistory = GrowthWorkoutHistory.sample

    var monthlyCareProgress: Double {
        Double(monthlyCareDays) / Double(daysInMonth)
    }
}

struct GrowthWorkoutHistory: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let dateText: String
    let bodyArea: String
    let durationText: String

    static let sample = [
        GrowthWorkoutHistory(title: "肩颈放松", dateText: "今天", bodyArea: "肩颈", durationText: "8 分钟"),
        GrowthWorkoutHistory(title: "胸椎打开", dateText: "昨天", bodyArea: "胸椎", durationText: "10 分钟"),
        GrowthWorkoutHistory(title: "腰背舒展", dateText: "周一", bodyArea: "腰背", durationText: "7 分钟"),
    ]
}

struct FlowerHistoryItem: Identifiable, Hashable {
    let id = UUID()
    let dateText: String
    let completion: Double
    let note: String

    static let sample = [
        FlowerHistoryItem(dateText: "11月第3周", completion: 0.72, note: "花朵继续打开，照顾节奏稳定"),
        FlowerHistoryItem(dateText: "11月第2周", completion: 0.54, note: "肩颈和腰背照顾次数增加"),
        FlowerHistoryItem(dateText: "11月第1周", completion: 0.32, note: "本月身体之花开始生长"),
    ]
}

struct BodyAreaCareItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let careCount: Int
    let progress: Double

    static let sample = [
        BodyAreaCareItem(name: "肩颈", careCount: 6, progress: 0.86),
        BodyAreaCareItem(name: "肩胛", careCount: 4, progress: 0.58),
        BodyAreaCareItem(name: "胸椎", careCount: 5, progress: 0.72),
        BodyAreaCareItem(name: "腰背", careCount: 7, progress: 1.0),
        BodyAreaCareItem(name: "髋", careCount: 3, progress: 0.42),
        BodyAreaCareItem(name: "膝", careCount: 2, progress: 0.28),
        BodyAreaCareItem(name: "足踝", careCount: 3, progress: 0.42),
    ]
}
