import SwiftUI

struct TodayStatusView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.small) {
            Text("今天照顾身体了吗？")
                .font(.appHeadline)
                .foregroundStyle(Color.appTextPrimary)

            Text("每天一点点，身体会记得。")
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
