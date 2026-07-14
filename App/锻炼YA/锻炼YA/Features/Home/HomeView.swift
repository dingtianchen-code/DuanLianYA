import SwiftUI

struct HomeView: View {
    let onStartCare: (DuckPosture) -> Void
    let onOpenBodyAreas: () -> Void
    let onOpenHistory: () -> Void
    let onOpenGrowth: () -> Void

    @State private var viewModel = HomeViewModel()

    init(
        onStartCare: @escaping (DuckPosture) -> Void = { _ in },
        onOpenBodyAreas: @escaping () -> Void = {},
        onOpenHistory: @escaping () -> Void = {},
        onOpenGrowth: @escaping () -> Void = {}
    ) {
        self.onStartCare = onStartCare
        self.onOpenBodyAreas = onOpenBodyAreas
        self.onOpenHistory = onOpenHistory
        self.onOpenGrowth = onOpenGrowth
    }

    var body: some View {
        ScrollView {
            VStack(spacing: AppSpacing.large) {
                header

                PostureInteractionView(
                    selectedPosture: viewModel.selectedPosture,
                    onSelect: viewModel.select,
                    onSwipe: viewModel.handleSwipe
                )

                Button {
                    onStartCare(viewModel.selectedPosture)
                } label: {
                    Label("开始\(viewModel.selectedPosture.careName)", systemImage: "arrow.right")
                        .font(.appBody.weight(.semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(Color.appPrimary, in: Capsule())
                }
                .buttonStyle(.plain)

                DuckHomeQuickActions(
                    onOpenBodyAreas: onOpenBodyAreas,
                    onOpenHistory: onOpenHistory,
                    onOpenGrowth: onOpenGrowth
                )
            }
            .padding(.horizontal, AppSpacing.pagePadding)
            .padding(.top, AppSpacing.medium)
            .padding(.bottom, AppSpacing.large)
        }
        .background(Color.appBackground.ignoresSafeArea())
        .navigationBarTitleDisplayMode(.inline)
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: AppSpacing.small) {
            Text("锻炼YA")
                .font(.appTitle)
                .foregroundStyle(Color.appTextPrimary)

            Text("今天想用什么姿势照顾身体？")
                .font(.appBody)
                .foregroundStyle(Color.appTextSecondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
