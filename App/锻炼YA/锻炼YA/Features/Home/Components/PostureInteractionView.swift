import SwiftUI

struct PostureInteractionView: View {
    let selectedPosture: DuckPosture
    let onSelect: (DuckPosture) -> Void
    let onSwipe: (Double) -> Void

    var body: some View {
        VStack(spacing: AppSpacing.medium) {
            ZStack {
                RoundedRectangle(cornerRadius: 32, style: .continuous)
                    .fill(.white.opacity(0.72))

                DuckPosturePlaceholder(posture: selectedPosture)
                    .id(selectedPosture)
            }
            .frame(height: 330)
            .contentShape(Rectangle())
            .gesture(
                DragGesture(minimumDistance: 18)
                    .onEnded { value in
                        onSwipe(value.translation.width)
                    }
            )
            .accessibilityElement(children: .combine)
            .accessibilityLabel("鸭子当前姿态：\(selectedPosture.displayName)")
            .accessibilityHint("左右滑动可切换姿态")

            VStack(spacing: 6) {
                Text(selectedPosture.displayName)
                    .font(.appHeadline)
                    .foregroundStyle(Color.appTextPrimary)

                Text(selectedPosture.guidance)
                    .font(.appCaption)
                    .foregroundStyle(Color.appTextSecondary)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 300)
            }

            posturePicker

            Label("左右滑动切换鸭子姿态", systemImage: "arrow.left.and.right")
                .font(.appCaption)
                .foregroundStyle(Color.appTextSecondary)
        }
    }

    private var posturePicker: some View {
        HStack(spacing: AppSpacing.small) {
            ForEach(DuckPosture.allCases) { posture in
                Button {
                    onSelect(posture)
                } label: {
                    Text(posture.displayName)
                        .font(.appCaption.weight(.medium))
                        .foregroundStyle(
                            posture == selectedPosture ? Color.white : Color.appTextSecondary
                        )
                        .padding(.horizontal, 14)
                        .padding(.vertical, 9)
                        .background(
                            posture == selectedPosture ? Color.appPrimary : Color.white.opacity(0.72),
                            in: Capsule()
                        )
                }
                .buttonStyle(.plain)
                .accessibilityAddTraits(posture == selectedPosture ? .isSelected : [])
            }
        }
    }
}

private struct DuckPosturePlaceholder: View {
    let posture: DuckPosture

    var body: some View {
        VStack(spacing: 18) {
            Spacer()

            ZStack(alignment: posture == .lying ? .trailing : .bottom) {
                scene

                Text("🦆")
                    .font(.system(size: 104))
                    .rotationEffect(posture == .lying ? .degrees(82) : .zero)
                    .offset(duckOffset)
            }
            .frame(width: 230, height: 170)

            Text(posture.careName)
                .font(.appBody.weight(.medium))
                .foregroundStyle(Color.appTextPrimary)

            Spacer()
        }
    }

    @ViewBuilder
    private var scene: some View {
        switch posture {
        case .standing:
            Capsule()
                .fill(Color.appPrimary.opacity(0.16))
                .frame(width: 150, height: 18)
        case .sitting:
            Image(systemName: "chair.lounge.fill")
                .font(.system(size: 108))
                .foregroundStyle(Color.appSecondary.opacity(0.55))
        case .lying:
            Image(systemName: "bed.double.fill")
                .font(.system(size: 96))
                .foregroundStyle(Color.appSecondary.opacity(0.55))
        }
    }

    private var duckOffset: CGSize {
        switch posture {
        case .standing: CGSize(width: 0, height: -16)
        case .sitting: CGSize(width: 15, height: -24)
        case .lying: CGSize(width: -28, height: -17)
        }
    }
}

#Preview {
    PostureInteractionView(
        selectedPosture: .standing,
        onSelect: { _ in },
        onSwipe: { _ in }
    )
    .padding()
    .background(Color.appBackground)
}
