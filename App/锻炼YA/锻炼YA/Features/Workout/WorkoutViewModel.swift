import Foundation
import Observation

@Observable
final class WorkoutViewModel {
    var exercises: [WorkoutExerciseItem] = WorkoutExerciseItem.sample
    var currentIndex = 0
    var isCompleted = false

    var currentExercise: WorkoutExerciseItem {
        exercises[currentIndex]
    }

    var completedCount: Int {
        exercises.filter(\.isCompleted).count
    }

    var progress: Double {
        guard !exercises.isEmpty else { return 0 }
        return Double(completedCount) / Double(exercises.count)
    }

    var totalDurationText: String {
        let minutes = exercises.reduce(0) { $0 + $1.durationSeconds } / 60
        return "\(minutes) 分钟"
    }

    func completeCurrentExercise() {
        exercises[currentIndex].isCompleted = true

        if currentIndex < exercises.count - 1 {
            currentIndex += 1
        } else {
            isCompleted = true
        }
    }

    func restart() {
        currentIndex = 0
        isCompleted = false
        exercises = WorkoutExerciseItem.sample
    }
}

struct WorkoutExerciseItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let bodyArea: String
    let durationSeconds: Int
    let instruction: String
    var isCompleted: Bool = false

    var durationText: String {
        "\(durationSeconds / 60) 分钟"
    }

    static let sample = [
        WorkoutExerciseItem(
            name: "肩颈放松",
            bodyArea: "肩颈",
            durationSeconds: 180,
            instruction: "慢慢转动肩颈，保持呼吸自然，感受紧张一点点松开。"
        ),
        WorkoutExerciseItem(
            name: "胸椎打开",
            bodyArea: "胸椎",
            durationSeconds: 240,
            instruction: "双臂向外展开，轻轻带动上背部伸展，不追求幅度。"
        ),
        WorkoutExerciseItem(
            name: "腰背舒展",
            bodyArea: "腰背",
            durationSeconds: 180,
            instruction: "让腰背跟随呼吸缓慢延展，动作小一点也很好。"
        ),
    ]
}
