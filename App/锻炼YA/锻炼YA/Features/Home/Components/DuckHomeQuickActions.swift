import SwiftUI

struct DuckHomeQuickActions: View {
    let onOpenBodyAreas: () -> Void
    let onOpenHistory: () -> Void
    let onOpenGrowth: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            Text("更多照顾方式")
                .font(.appHeadline)
                .foregroundStyle(Color.appTextPrimary)

            LazyVGrid(columns: columns, spacing: AppSpacing.small) {
                actionButton(
                    title: "身体部位",
                    subtitle: "选择今天想照顾的地方",
                    systemImage: "figure.arms.open",
                    action: onOpenBodyAreas
                )

                actionButton(
                    title: "训练记录",
                    subtitle: "看看之前的身体照顾",
                    systemImage: "clock.arrow.circlepath",
                    action: onOpenHistory
                )

                actionButton(
                    title: "鸭子成长",
                    subtitle: "感受每一次坚持的反馈",
                    systemImage: "sparkles",
                    action: onOpenGrowth
                )
            }
        }
    }

    private var columns: [GridItem] {
        [GridItem(.flexible()), GridItem(.flexible())]
    }

    private func actionButton(
        title: String,
        subtitle: String,
        systemImage: String,
        action: @escaping () -> Void
    ) -> some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: AppSpacing.small) {
                Image(systemName: systemImage)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundStyle(Color.appPrimary)

                Text(title)
                    .font(.appBody.weight(.semibold))
                    .foregroundStyle(Color.appTextPrimary)

                Text(subtitle)
                    .font(.appCaption)
                    .foregroundStyle(Color.appTextSecondary)
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, minHeight: 122, alignment: .topLeading)
            .padding(AppSpacing.medium)
            .background(.white.opacity(0.76), in: RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(.plain)
    }
}
