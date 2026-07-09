import SwiftUI

struct HomeView: View {
    let onStartWorkout: () -> Void
    @State private var viewModel = HomeViewModel()

    init(onStartWorkout: @escaping () -> Void = {}) {
        self.onStartWorkout = onStartWorkout
    }

    var body: some View {
        ScrollView {
            VStack(spacing: AppSpacing.large) {
                VStack(alignment: .leading, spacing: AppSpacing.small) {
                    Text("锻炼YA")
                        .font(.appTitle)
                        .foregroundStyle(Color.white.opacity(0.92))

                    Text(viewModel.weeklyProgressText)
                        .font(.appCaption)
                        .foregroundStyle(Color.white.opacity(0.64))
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                FlowerView(completion: viewModel.flowerCompletion)
                    .frame(maxWidth: 360)

                TodayStatusView(
                    title: viewModel.todayStatusTitle,
                    message: viewModel.todayStatusMessage
                )

                StartWorkoutCard(action: onStartWorkout)
            }
            .padding(AppSpacing.pagePadding)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.17, green: 0.17, blue: 0.17))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeView()
}
