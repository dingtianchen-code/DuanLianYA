import SwiftUI
import UIKit

struct FlowerView: View {
    let completion: Double

    @State private var animatedCompletion = 0.0
    @State private var isAlive = false
    @State private var lightSweep = false

    init(completion: Double = 0.72) {
        self.completion = min(max(completion, 0), 1)
    }

    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let frame = resolvedFrame(for: animatedCompletion)

            ZStack {
                ambientGlow(size: size)

                flowerImage(named: frame.baseImageName, size: size, progress: 1 - frame.progress)
                    .opacity(1 - frame.progress)
                    .blur(radius: frame.progress * 1.2)

                flowerImage(named: frame.nextImageName, size: size, progress: frame.progress)
                    .opacity(frame.progress)
                    .blur(radius: (1 - frame.progress) * 0.8)

                lightOverlay(size: size)
                dewDropLayer(size: size)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .scaleEffect(isAlive ? 1.012 : 0.992)
            .offset(y: isAlive ? -2 : 2)
            .animation(.easeInOut(duration: 1.8).repeatForever(autoreverses: true), value: isAlive)
        }
        .aspectRatio(1, contentMode: .fit)
        .padding(AppSpacing.medium)
        .onAppear {
            withAnimation(.easeInOut(duration: 2.0)) {
                animatedCompletion = completion
            }

            isAlive = true

            withAnimation(.easeInOut(duration: 2.0).delay(0.4)) {
                lightSweep = true
            }
        }
        .onChange(of: completion) { _, newValue in
            lightSweep = false

            withAnimation(.easeInOut(duration: 2.0)) {
                animatedCompletion = min(max(newValue, 0), 1)
            }

            withAnimation(.easeInOut(duration: 2.0).delay(0.4)) {
                lightSweep = true
            }
        }
    }

    private func flowerImage(named name: String, size: CGFloat, progress: Double) -> some View {
        FlowerImageLayer(
            name: name,
            size: size,
            scale: 0.94 + animatedCompletion * 0.05 + progress * 0.018,
            warmShadowOpacity: 0.08 + animatedCompletion * 0.12
        )
    }

    private func ambientGlow(size: CGFloat) -> some View {
        Circle()
            .fill(Color.appSecondary.opacity(0.08 + animatedCompletion * 0.12))
            .frame(width: size * (0.48 + animatedCompletion * 0.38))
            .blur(radius: size * 0.12)
            .scaleEffect(isAlive ? 1.08 : 0.96)
    }

    private func lightOverlay(size: CGFloat) -> some View {
        LinearGradient(
            colors: [
                .clear,
                .white.opacity(0.05 + animatedCompletion * 0.1),
                Color.appSecondary.opacity(0.05 + animatedCompletion * 0.08),
                .clear,
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .frame(width: size * 0.72, height: size * 1.1)
        .rotationEffect(.degrees(18))
        .offset(x: lightSweep ? size * 0.55 : -size * 0.55)
        .blendMode(.screen)
        .blur(radius: size * 0.018)
        .opacity(0.35 + animatedCompletion * 0.35)
    }

    private func dewDropLayer(size: CGFloat) -> some View {
        ZStack {
            dewDrop(size: size * 0.025)
                .offset(x: -size * 0.18, y: -size * 0.12)
            dewDrop(size: size * 0.018)
                .offset(x: size * 0.16, y: -size * 0.18)
            dewDrop(size: size * 0.014)
                .offset(x: size * 0.05, y: size * 0.02)
        }
        .opacity(0.18 + animatedCompletion * 0.45)
        .offset(x: isAlive ? 1.5 : -1.5, y: isAlive ? -1 : 1)
        .animation(.easeInOut(duration: 1.05).repeatForever(autoreverses: true), value: isAlive)
    }

    private func dewDrop(size: CGFloat) -> some View {
        Circle()
            .fill(.white.opacity(0.62))
            .frame(width: size, height: size)
            .overlay {
                Circle()
                    .stroke(.white.opacity(0.35), lineWidth: 1)
            }
            .shadow(color: .white.opacity(0.2), radius: size * 0.35)
    }

    private func resolvedFrame(for completion: Double) -> FlowerFrame {
        if completion <= 0.5 {
            return FlowerFrame(
                baseImageName: "flower_00",
                nextImageName: "flower_50",
                progress: completion / 0.5
            )
        }

        return FlowerFrame(
            baseImageName: "flower_50",
            nextImageName: "flower_100",
            progress: (completion - 0.5) / 0.5
        )
    }
}

private struct FlowerFrame {
    let baseImageName: String
    let nextImageName: String
    let progress: Double
}

private struct FlowerImageLayer: View {
    let name: String
    let size: CGFloat
    let scale: Double
    let warmShadowOpacity: Double

    var body: some View {
        if let image = image {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .frame(width: size * 0.96, height: size * 0.96)
                .scaleEffect(scale)
                .shadow(color: .black.opacity(0.55), radius: size * 0.035, y: size * 0.02)
                .shadow(color: Color.appSecondary.opacity(warmShadowOpacity), radius: size * 0.08)
        }
    }

    private var image: UIImage? {
        guard let path = Bundle.main.path(forResource: name, ofType: "png") else {
            return nil
        }

        return UIImage(contentsOfFile: path)
    }
}

#Preview("0% 花苞") {
    FlowerView(completion: 0.0)
        .frame(width: 340, height: 340)
        .background(Color(red: 0.17, green: 0.17, blue: 0.17))
}

#Preview("50% 半开") {
    FlowerView(completion: 0.5)
        .frame(width: 340, height: 340)
        .background(Color(red: 0.17, green: 0.17, blue: 0.17))
}

#Preview("100% 完全绽放") {
    FlowerView(completion: 1.0)
        .frame(width: 340, height: 340)
        .background(Color(red: 0.17, green: 0.17, blue: 0.17))
}
