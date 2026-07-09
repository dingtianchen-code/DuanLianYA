import SwiftUI

struct GrowthView: View {
    @State private var viewModel = GrowthViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: AppSpacing.large) {
                GrowthSummaryCard(
                    monthTitle: viewModel.monthTitle,
                    monthlyCareDays: viewModel.monthlyCareDays,
                    daysInMonth: viewModel.daysInMonth,
                    streakDays: viewModel.streakDays,
                    monthlyCareProgress: viewModel.monthlyCareProgress
                )

                FlowerHistoryView(items: viewModel.flowerGrowthRecords)

                BodyAreaCareView(items: viewModel.bodyAreaCare)

                WorkoutHistoryList(items: viewModel.workoutHistory)
            }
            .padding(AppSpacing.pagePadding)
            .padding(.bottom, 92)
        }
        .background(Color.appBackground.ignoresSafeArea())
        .navigationTitle("成长")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    ProfileView()
                } label: {
                    Image(systemName: "person.crop.circle")
                }
                .accessibilityLabel("我的")
            }
        }
    }
}

#Preview {
    NavigationStack {
        GrowthView()
    }
}
