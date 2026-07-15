import SwiftUI

struct DuckHomeView: View {
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
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                topBar
                welcome

                PostureInteractionView(
                    selectedPosture: viewModel.selectedPosture,
                    onSelect: viewModel.select,
                    onSwipe: viewModel.handleSwipe
                )
                .padding(.top, 18)

                Button {
                    onStartCare(viewModel.selectedPosture)
                } label: {
                    Text("开始")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundStyle(Color.homeInk)
                        .frame(maxWidth: .infinity)
                        .frame(height: 68)
                        .background(Color.homeYellow, in: Capsule())
                        .overlay {
                            Capsule().stroke(.white.opacity(0.55), lineWidth: 1)
                        }
                        .shadow(color: Color.homeGold.opacity(0.35), radius: 10, y: 8)
                }
                .buttonStyle(.plain)
                .accessibilityHint("开始今天推荐的 5 分钟身体照顾")

                Button(action: onOpenBodyAreas) {
                    Label("更换身体部位", systemImage: "arrow.triangle.2.circlepath")
                        .font(.system(size: 17, weight: .semibold, design: .rounded))
                        .foregroundStyle(Color.homeInk)
                        .padding(.horizontal, 28)
                        .frame(height: 52)
                        .background(.white.opacity(0.8), in: Capsule())
                        .shadow(color: .black.opacity(0.06), radius: 12, y: 6)
                }
                .buttonStyle(.plain)
                .tint(Color.homeGold)
                .padding(.top, 18)

                companionCard
                    .padding(.top, 26)
                    .padding(.bottom, 18)
            }
            .padding(.horizontal, 24)
        }
        .background(DuckHomeBackground().ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
    }

    private var topBar: some View {
        HStack {
            HStack(spacing: 8) {
                Image(systemName: "flame.fill")
                    .foregroundStyle(Color.homeYellow)
                    .font(.system(size: 22))
                VStack(alignment: .leading, spacing: -2) {
                    Text("4")
                        .font(.system(size: 17, weight: .bold, design: .rounded))
                    Text("天")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundStyle(Color.homeMuted)
                }
            }
            .padding(.horizontal, 16)
            .frame(height: 48)
            .background(.white.opacity(0.74), in: Capsule())

            Spacer()

            roundButton(systemImage: "chart.bar.fill", label: "照顾记录", action: onOpenHistory)
            roundButton(systemImage: "gearshape.fill", label: "设置", action: onOpenGrowth)
        }
        .padding(.top, 10)
    }

    private var welcome: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("早上好！☀️")
                .font(.system(size: 31, weight: .bold, design: .rounded))
                .foregroundStyle(Color.homeInk)
            Text("今天也一起，\n照顾身体一点点。")
                .font(.system(size: 19, weight: .medium, design: .rounded))
                .foregroundStyle(Color.homeMuted)
                .lineSpacing(4)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top, 26)
    }

    private var companionCard: some View {
        Button(action: onOpenGrowth) {
            HStack(spacing: 14) {
                Text("🐥")
                    .font(.system(size: 32))
                    .frame(width: 50, height: 50)
                    .background(Color.homeYellow.opacity(0.9), in: Circle())

                VStack(alignment: .leading, spacing: 2) {
                    Text("小小活动，")
                        .font(.system(size: 17, weight: .bold, design: .rounded))
                    Text("身体会记得。")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundStyle(Color.homeMuted)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundStyle(Color.homeMuted)
            }
            .foregroundStyle(Color.homeInk)
            .padding(.horizontal, 18)
            .frame(maxWidth: .infinity)
            .frame(height: 88)
            .background(.white.opacity(0.82), in: RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: .black.opacity(0.05), radius: 14, y: 7)
        }
        .buttonStyle(.plain)
    }

    private func roundButton(systemImage: String, label: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .font(.system(size: 19, weight: .bold))
                .foregroundStyle(Color.homeInk)
                .frame(width: 48, height: 48)
                .background(.white.opacity(0.82), in: Circle())
                .shadow(color: .black.opacity(0.08), radius: 8, y: 5)
        }
        .buttonStyle(.plain)
        .accessibilityLabel(label)
    }
}

private struct DuckHomeBackground: View {
    var body: some View {
        ZStack {
            Color(red: 1.0, green: 0.985, blue: 0.92)
            RadialGradient(
                colors: [.white.opacity(0.9), Color.homeYellow.opacity(0.09), .clear],
                center: .topTrailing,
                startRadius: 20,
                endRadius: 460
            )
        }
    }
}

extension Color {
    fileprivate static let homeYellow = Color(red: 1.0, green: 0.78, blue: 0.16)
    fileprivate static let homeGold = Color(red: 0.88, green: 0.58, blue: 0.02)
    fileprivate static let homeInk = Color(red: 0.14, green: 0.14, blue: 0.13)
    fileprivate static let homeMuted = Color(red: 0.50, green: 0.50, blue: 0.48)
}

// Kept as a compatibility name for previews or callers outside the app target.
typealias HomeView = DuckHomeView

#Preview {
    NavigationStack { DuckHomeView() }
}
