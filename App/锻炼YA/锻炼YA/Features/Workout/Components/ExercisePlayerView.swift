import SwiftUI

struct ExercisePlayerView: View {
    let exercise: WorkoutExerciseItem

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.large) {
            ZStack {
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(
                        LinearGradient(
                            colors: [Color.appPrimary.opacity(0.78), Color.appFlowerGrowing.opacity(0.55)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )

                Image(systemName: "figure.mind.and.body")
                    .font(.system(size: 76, weight: .light))
                    .foregroundStyle(.white.opacity(0.9))
            }
            .aspectRatio(1.45, contentMode: .fit)

            VStack(alignment: .leading, spacing: AppSpacing.small) {
                Text(exercise.bodyArea)
                    .font(.appCaption)
                    .foregroundStyle(Color.appPrimary)

                Text(exercise.name)
                    .font(.appTitle)
                    .foregroundStyle(Color.appTextPrimary)

                Text(exercise.instruction)
                    .font(.appBody)
                    .foregroundStyle(Color.appTextSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Label(exercise.durationText, systemImage: "clock")
                .font(.appBody)
                .foregroundStyle(Color.appTextSecondary)
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

#Preview {
    ExercisePlayerView(exercise: WorkoutExerciseItem.sample[0])
        .padding()
        .background(Color.appBackground)
}
