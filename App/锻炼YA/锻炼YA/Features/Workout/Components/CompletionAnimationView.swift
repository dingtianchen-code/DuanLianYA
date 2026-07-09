import SwiftUI

struct CompletionAnimationView: View {
    let onRestart: () -> Void

    var body: some View {
        VStack(spacing: AppSpacing.large) {
            Image(systemName: "sparkles")
                .font(.system(size: 58, weight: .light))
                .foregroundStyle(Color.appSecondary)
                .padding(.top, AppSpacing.medium)

            VStack(spacing: AppSpacing.small) {
                Text("今天已经照顾到身体了")
                    .font(.appTitle)
                    .foregroundStyle(Color.appTextPrimary)

                Text("这不是一次评判，只是一点温柔的积累。")
                    .font(.appBody)
                    .foregroundStyle(Color.appTextSecondary)
                    .multilineTextAlignment(.center)
            }

            Button {
                onRestart()
            } label: {
                Label("再练一组", systemImage: "arrow.clockwise")
                    .font(.appHeadline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, AppSpacing.medium)
                    .background(Color.appPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
            }
            .buttonStyle(.plain)
        }
        .padding(AppSpacing.large)
        .frame(maxWidth: .infinity)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

#Preview {
    CompletionAnimationView {}
        .padding()
        .background(Color.appBackground)
}
