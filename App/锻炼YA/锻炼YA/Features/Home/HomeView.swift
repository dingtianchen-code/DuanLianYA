import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()

    var body: some View {
        VStack(spacing: AppSpacing.large) {
            Text("锻炼YA")
                .font(.appTitle)
                .foregroundStyle(Color.white.opacity(0.92))
                .frame(maxWidth: .infinity, alignment: .leading)

            FlowerView()
                .frame(maxWidth: 360)

            TodayStatusView()

            Spacer(minLength: AppSpacing.medium)

            StartWorkoutCard()
        }
        .padding(AppSpacing.pagePadding)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.17, green: 0.17, blue: 0.17))
    }
}

#Preview {
    HomeView()
}
