import SwiftUI

struct WorkoutHistoryList: View {
    let items: [GrowthWorkoutHistory]

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            Text("训练历史")
                .font(.appHeadline)
                .foregroundStyle(Color.appTextPrimary)

            VStack(spacing: 0) {
                ForEach(items) { item in
                    WorkoutHistoryRow(item: item)

                    if item.id != items.last?.id {
                        Divider()
                            .padding(.leading, 52)
                    }
                }
            }
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

private struct WorkoutHistoryRow: View {
    let item: GrowthWorkoutHistory

    var body: some View {
        HStack(spacing: AppSpacing.medium) {
            Image(systemName: "checkmark")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 36, height: 36)
                .background(Color.appPrimary)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .font(.appBody)
                    .foregroundStyle(Color.appTextPrimary)

                Text("\(item.dateText) · \(item.bodyArea)")
                    .font(.appCaption)
                    .foregroundStyle(Color.appTextSecondary)
            }

            Spacer()

            Text(item.durationText)
                .font(.appCaption)
                .foregroundStyle(Color.appTextSecondary)
        }
        .padding(.vertical, AppSpacing.small)
    }
}

#Preview {
    WorkoutHistoryList(items: GrowthWorkoutHistory.sample)
        .padding()
        .background(Color.appBackground)
}
