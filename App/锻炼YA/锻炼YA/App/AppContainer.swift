import SwiftUI

struct AppContainer: View {
    @State private var selectedModule: AppModule = .stats

    var body: some View {
        ZStack(alignment: .bottom) {
            currentModuleView
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            MainNavigationBar(selectedModule: $selectedModule)
        }
    }

    @ViewBuilder
    private var currentModuleView: some View {
        switch selectedModule {
        case .stats:
            StatsHomeView(showsReferenceTabBar: false) {
                selectedModule = .workout
            }
        case .workout:
            NavigationStack {
                WorkoutView()
            }
        case .growth:
            NavigationStack {
                GrowthView()
            }
        }
    }
}

enum AppModule: Hashable {
    case stats
    case workout
    case growth

    var title: String {
        switch self {
        case .stats: "统计"
        case .workout: "训练"
        case .growth: "成长"
        }
    }

    var systemImage: String {
        switch self {
        case .stats: "heart.circle"
        case .workout: "figure.flexibility"
        case .growth: "camera.macro"
        }
    }
}

private struct MainNavigationBar: View {
    @Binding var selectedModule: AppModule

    var body: some View {
        HStack(alignment: .bottom) {
            MainNavigationItem(
                module: .stats,
                selectedModule: $selectedModule
            )

            Spacer()

            Button {
                selectedModule = .workout
            } label: {
                ReferenceImage(name: "stats_center_button")
                    .frame(width: 62, height: 62)
                    .clipShape(Circle())
                    .shadow(color: Color.appPrimary.opacity(0.22), radius: 12, y: 4)
                    .accessibilityLabel(AppModule.workout.title)
            }
            .buttonStyle(.plain)
            .offset(y: -18)

            Spacer()

            MainNavigationItem(
                module: .growth,
                selectedModule: $selectedModule
            )
        }
        .padding(.horizontal, 44)
        .padding(.top, 12)
        .padding(.bottom, 18)
        .frame(maxWidth: .infinity)
        .background {
            UnevenRoundedRectangle(
                topLeadingRadius: 20,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 20,
                style: .continuous
            )
            .fill(.white)
            .shadow(color: .black.opacity(0.06), radius: 18, y: -8)
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

private struct MainNavigationItem: View {
    let module: AppModule
    @Binding var selectedModule: AppModule

    private var isSelected: Bool {
        selectedModule == module
    }

    var body: some View {
        Button {
            selectedModule = module
        } label: {
            VStack(spacing: 4) {
                Image(systemName: module.systemImage)
                    .font(.system(size: 22, weight: isSelected ? .semibold : .regular))

                Text(module.title)
                    .font(.appCaption)
            }
            .foregroundStyle(isSelected ? Color.appPrimary : Color.appTextSecondary)
            .frame(width: 68, height: 44)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    AppContainer()
}
