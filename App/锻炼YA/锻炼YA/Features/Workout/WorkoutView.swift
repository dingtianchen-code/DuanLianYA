import SwiftUI

struct WorkoutView: View {
    @State private var viewModel = WorkoutViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: AppSpacing.large) {
                WorkoutProgressView(
                    progress: viewModel.progress,
                    completedCount: viewModel.completedCount,
                    totalCount: viewModel.exercises.count,
                    totalDurationText: viewModel.totalDurationText
                )

                if viewModel.isCompleted {
                    CompletionAnimationView {
                        viewModel.restart()
                    }
                } else {
                    ExercisePlayerView(exercise: viewModel.currentExercise)

                    Button {
                        viewModel.completeCurrentExercise()
                    } label: {
                        Label("完成这个动作", systemImage: "checkmark.circle.fill")
                            .font(.appHeadline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, AppSpacing.medium)
                            .background(Color.appPrimary)
                            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(AppSpacing.pagePadding)
        }
        .background(Color.appBackground.ignoresSafeArea())
        .navigationTitle("今日训练")
    }
}

#Preview {
    NavigationStack {
        WorkoutView()
    }
}
