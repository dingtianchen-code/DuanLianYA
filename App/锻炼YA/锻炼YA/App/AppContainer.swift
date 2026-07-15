import SwiftUI

struct AppContainer: View {
    @State private var path: [AppDestination] = []

    var body: some View {
        NavigationStack(path: $path) {
            DuckHomeView(
                onStartCare: { posture in
                    path.append(.careRecommendation(posture))
                },
                onOpenBodyAreas: {
                    path.append(.bodyAreaSelection)
                },
                onOpenHistory: {
                    path.append(.trainingHistory)
                },
                onOpenGrowth: {
                    path.append(.duckGrowth)
                }
            )
            .navigationDestination(for: AppDestination.self) { destination in
                destinationView(for: destination)
            }
        }
    }

    @ViewBuilder
    private func destinationView(for destination: AppDestination) -> some View {
        switch destination {
        case .careRecommendation:
            WorkoutView()
        case .bodyAreaSelection:
            FutureFeaturePlaceholder(
                title: "身体部位选择",
                message: "后续将在这里选择今天想照顾的身体部位。",
                systemImage: "figure.arms.open"
            )
        case .trainingHistory:
            FutureFeaturePlaceholder(
                title: "训练记录",
                message: "后续将在这里展示已完成的身体照顾记录。",
                systemImage: "clock.arrow.circlepath"
            )
        case .duckGrowth:
            FutureFeaturePlaceholder(
                title: "鸭子成长",
                message: "后续将在这里呈现鸭子的成长与陪伴反馈。",
                systemImage: "sparkles"
            )
        }
    }
}

private enum AppDestination: Hashable {
    case careRecommendation(DuckPosture)
    case bodyAreaSelection
    case trainingHistory
    case duckGrowth
}

private struct FutureFeaturePlaceholder: View {
    let title: String
    let message: String
    let systemImage: String

    var body: some View {
        ContentUnavailableView(
            title,
            systemImage: systemImage,
            description: Text(message)
        )
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AppContainer()
}
