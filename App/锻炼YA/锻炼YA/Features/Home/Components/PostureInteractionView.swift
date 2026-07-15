import SwiftUI

struct PostureInteractionView: View {
    let selectedPosture: DuckPosture
    let onSelect: (DuckPosture) -> Void
    let onSwipe: (Double) -> Void

    var body: some View {
        ZStack {
            landscape

            speechBubble
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, 4)

            duck
                .id(selectedPosture)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, 18)

            durationCard
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.bottom, 44)
        }
        .frame(height: 350)
        .contentShape(Rectangle())
        .gesture(
            DragGesture(minimumDistance: 18)
                .onEnded { onSwipe($0.translation.width) }
        )
        .accessibilityElement(children: .contain)
        .accessibilityLabel("鸭鸭正在\(selectedPosture.displayName)，推荐今天照顾腰背")
        .accessibilityHint("左右滑动可以看看鸭鸭的其他姿态")
    }

    private var speechBubble: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("今天来做")
            Text("腰背舒展")
                .foregroundStyle(Color(red: 0.96, green: 0.65, blue: 0.03))
                .fontWeight(.bold)
            Text("怎么样？")
        }
        .font(.system(size: 18, weight: .medium, design: .rounded))
        .foregroundStyle(Color(red: 0.14, green: 0.14, blue: 0.13))
        .padding(.horizontal, 20)
        .padding(.vertical, 14)
        .background(.white.opacity(0.92), in: RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: .black.opacity(0.08), radius: 12, y: 5)
    }

    private var durationCard: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(systemName: "clock.fill")
                .font(.system(size: 22))
                .foregroundStyle(Color(red: 1.0, green: 0.76, blue: 0.12))
            Text("5 分钟")
                .font(.system(size: 18, weight: .bold, design: .rounded))
            Text("轻松照顾")
                .font(.system(size: 13, weight: .medium, design: .rounded))
                .foregroundStyle(.secondary)
        }
        .padding(15)
        .background(.white.opacity(0.9), in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.08), radius: 12, y: 6)
    }

    private var duck: some View {
        ZStack {
            if selectedPosture == .sitting {
                Image(systemName: "chair.lounge.fill")
                    .font(.system(size: 92))
                    .foregroundStyle(Color(red: 0.87, green: 0.70, blue: 0.36).opacity(0.65))
                    .offset(x: 35, y: 25)
            } else if selectedPosture == .lying {
                Image(systemName: "bed.double.fill")
                    .font(.system(size: 92))
                    .foregroundStyle(Color(red: 0.87, green: 0.70, blue: 0.36).opacity(0.55))
                    .offset(y: 24)
            }

            DuckMascotPlaceholder()
                .frame(width: 190, height: 210)
                .rotationEffect(selectedPosture == .lying ? .degrees(76) : .zero)
                .offset(x: selectedPosture == .sitting ? -18 : 0, y: selectedPosture == .lying ? 24 : 0)
        }
        .frame(width: 250, height: 220)
        .shadow(color: Color.orange.opacity(0.14), radius: 14, y: 10)
    }

    private var landscape: some View {
        ZStack(alignment: .bottom) {
            Ellipse()
                .fill(Color(red: 0.96, green: 0.82, blue: 0.36).opacity(0.28))
                .frame(width: 270, height: 36)

            HStack(alignment: .bottom, spacing: 26) {
                Circle().fill(Color.yellow.opacity(0.10)).frame(width: 78, height: 78)
                Spacer()
                Capsule().fill(Color.yellow.opacity(0.14)).frame(width: 40, height: 120)
            }
            .padding(.bottom, 24)
        }
    }
}

private struct DuckMascotPlaceholder: View {
    private let yellow = Color(red: 1.0, green: 0.78, blue: 0.13)
    private let orange = Color(red: 0.98, green: 0.49, blue: 0.08)

    var body: some View {
        ZStack {
            Ellipse()
                .fill(yellow)
                .frame(width: 142, height: 132)
                .offset(y: 38)

            Circle()
                .fill(yellow)
                .frame(width: 112, height: 112)
                .offset(y: -44)

            Ellipse()
                .fill(yellow.opacity(0.92))
                .frame(width: 46, height: 82)
                .rotationEffect(.degrees(-42))
                .offset(x: -65, y: 20)

            Ellipse()
                .fill(yellow.opacity(0.88))
                .frame(width: 42, height: 76)
                .rotationEffect(.degrees(30))
                .offset(x: 65, y: 32)

            HStack(spacing: 36) {
                Circle().fill(Color(red: 0.12, green: 0.11, blue: 0.08)).frame(width: 12, height: 18)
                Circle().fill(Color(red: 0.12, green: 0.11, blue: 0.08)).frame(width: 12, height: 18)
            }
            .offset(y: -57)

            Capsule()
                .fill(orange)
                .frame(width: 58, height: 24)
                .offset(y: -28)

            HStack(spacing: 34) {
                Capsule().fill(orange).frame(width: 12, height: 38)
                Capsule().fill(orange).frame(width: 12, height: 38)
            }
            .offset(y: 106)

            HStack(spacing: 18) {
                Ellipse().fill(orange).frame(width: 44, height: 16)
                Ellipse().fill(orange).frame(width: 44, height: 16)
            }
            .offset(y: 126)
        }
    }
}

#Preview {
    PostureInteractionView(selectedPosture: .standing, onSelect: { _ in }, onSwipe: { _ in })
        .padding()
        .background(Color(red: 1, green: 0.985, blue: 0.92))
}
