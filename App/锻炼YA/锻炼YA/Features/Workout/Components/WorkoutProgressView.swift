import SwiftUI

struct WorkoutProgressView: View {
    let progress: Double
    let completedCount: Int
    let totalCount: Int
    let totalDurationText: String

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            HStack(alignment: .firstTextBaseline) {
                VStack(alignment: .leading, spacing: AppSpacing.small) {
                    Text("完成一次身体照顾")
                        .font(.appHeadline)
                        .foregroundStyle(Color.appTextPrimary)

                    Text("今日训练 \(totalDurationText)")
                        .font(.appCaption)
                        .foregroundStyle(Color.appTextSecondary)
                }

                Spacer()

                Text("\(completedCount)/\(totalCount)")
                    .font(.appHeadline)
                    .foregroundStyle(Color.appPrimary)
            }

            ProgressView(value: progress)
                .tint(Color.appPrimary)
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

#Preview {
    WorkoutProgressView(progress: 0.34, completedCount: 1, totalCount: 3, totalDurationText: "10 分钟")
        .padding()
        .background(Color.appBackground)
}
