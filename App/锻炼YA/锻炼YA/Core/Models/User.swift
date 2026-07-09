import Foundation
import SwiftData

@Model
final class User {
    @Attribute(.unique) var id: UUID
    var nickname: String
    var avatarName: String
    var createdAt: Date
    var updatedAt: Date

    init(
        id: UUID = UUID(),
        nickname: String,
        avatarName: String = "person.crop.circle",
        createdAt: Date = .now,
        updatedAt: Date = .now
    ) {
        self.id = id
        self.nickname = nickname
        self.avatarName = avatarName
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
