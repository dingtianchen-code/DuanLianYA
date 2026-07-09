import SwiftUI

struct GrowthSummaryCard: View {
    let monthTitle: String
    let monthlyCareDays: Int
    let daysInMonth: Int
    let streakDays: Int
    let monthlyCareProgress: Double

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.large) {
            VStack(alignment: .leading, spacing: AppSpacing.small) {
                Text(monthTitle)
                    .font(.appTitle)
                    .foregroundStyle(Color.appTextPrimary)

                Text("本月照顾身体的记录，会沉淀成身体之花的成长。")
                    .font(.appBody)
                    .foregroundStyle(Color.appTextSecondary)
            }

            ProgressView(value: monthlyCareProgress)
                .tint(Color.appPrimary)

            HStack(spacing: AppSpacing.medium) {
                GrowthMetricView(value: "\(monthlyCareDays)", label: "本月照顾天数")
                GrowthMetricView(value: "\(daysInMonth)", label: "本月天数")
                GrowthMetricView(value: "\(streakDays)", label: "连续锻炼天数")
            }
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

private struct GrowthMetricView: View {
    let value: String
    let label: String

    var body: some View {
        VStack(spacing: AppSpacing.small) {
            Text(value)
                .font(.appHeadline)
                .foregroundStyle(Color.appPrimary)

            Text(label)
                .font(.appCaption)
                .foregroundStyle(Color.appTextSecondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, AppSpacing.medium)
        .background(Color.appPrimary.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    GrowthSummaryCard(monthTitle: "11月身体之花", monthlyCareDays: 14, daysInMonth: 30, streakDays: 6, monthlyCareProgress: 0.46)
        .padding()
        .background(Color.appBackground)
}
