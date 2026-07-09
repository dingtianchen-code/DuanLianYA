import SwiftUI

struct TodayStatusView: View {
    let title: String
    let message: String

    init(title: String = "今天照顾身体了吗？", message: String = "每天一点点，身体会记得。") {
        self.title = title
        self.message = message
    }

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.small) {
            Text(title)
                .font(.appHeadline)
                .foregroundStyle(Color.appTextPrimary)

            Text(message)
                .font(.appBody)
                .foregroundStyle(Color.appTextSecondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(AppSpacing.large)
        .background(Color.white.opacity(0.58))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

#Preview {
    TodayStatusView()
        .padding()
        .background(Color.appBackground)
}
