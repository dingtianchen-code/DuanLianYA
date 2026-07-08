import SwiftUI

struct StartWorkoutCard: View {
    var body: some View {
        Button {
        } label: {
            Text("开始锻炼")
                .font(.appHeadline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, AppSpacing.medium)
                .background(Color.appPrimary)
                .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                .shadow(color: Color.appPrimary.opacity(0.22), radius: AppSpacing.small, y: 4)
        }
        .buttonStyle(.plain)
        .accessibilityLabel("开始锻炼")
    }
}

#Preview {
    StartWorkoutCard()
        .padding()
        .background(Color.appBackground)
}
