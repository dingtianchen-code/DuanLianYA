import Foundation
import Observation

@Observable
final class HomeViewModel {
    var todayStatusTitle = "今天照顾身体了吗？"
    var todayStatusMessage = "每天一点点，身体会记得。"
    var flowerCompletion = 0.72
    var completedWorkoutCount = 3
    var weeklyGoal = 5

    var weeklyProgressText: String {
        "本周 \(completedWorkoutCount)/\(weeklyGoal) 次照顾"
    }
}
