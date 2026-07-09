import Foundation
import Observation

@Observable
final class ProfileViewModel {
    var nickname = "锻炼YA 用户"
    var trainingGoal = "每天照顾身体一点点"
    var ageText = "未设置"
    var bodyProfileText = "身高、体重可稍后补充"
    var weeklyTargetText = "每周 5 次轻柔训练"

    var rows: [ProfileRowItem] {
        [
            ProfileRowItem(title: "身体档案", subtitle: bodyProfileText, systemImage: "person.text.rectangle"),
            ProfileRowItem(title: "训练目标", subtitle: trainingGoal, systemImage: "target"),
            ProfileRowItem(title: "每周节奏", subtitle: weeklyTargetText, systemImage: "calendar"),
            ProfileRowItem(title: "提醒设置", subtitle: "温柔提醒，不制造压力", systemImage: "bell"),
        ]
    }
}

struct ProfileRowItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let subtitle: String
    let systemImage: String
}
