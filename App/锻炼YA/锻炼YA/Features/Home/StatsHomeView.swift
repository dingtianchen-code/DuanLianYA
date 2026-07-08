import AVFoundation
import SwiftUI
import UIKit

struct StatsHomeView: View {
    private let days: [StatsDay] = [
        StatsDay(weekday: "日", day: "10", isToday: false, marker: .none),
        StatsDay(weekday: "今天", day: "11", isToday: true, marker: .ring),
        StatsDay(weekday: "二", day: "12", isToday: false, marker: .none),
        StatsDay(weekday: "三", day: "13", isToday: false, marker: .dot),
        StatsDay(weekday: "四", day: "14", isToday: false, marker: .ring),
        StatsDay(weekday: "五", day: "15", isToday: false, marker: .none),
        StatsDay(weekday: "六", day: "16", isToday: false, marker: .none),
    ]

    var body: some View {
        GeometryReader { proxy in
            let metrics = StatsHomeMetrics(size: proxy.size)

            ZStack(alignment: .top) {
                Color.statsPageBackground
                    .ignoresSafeArea()

                topPanel(metrics: metrics)
                    .frame(height: metrics.headerHeight)
                    .frame(maxWidth: .infinity, alignment: .top)

                moreActivitiesSection(metrics: metrics)
                    .padding(.top, metrics.moreActivitiesTop)

                tabBarPlaceholder(metrics: metrics)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea(edges: .bottom)
            }
        }
        .ignoresSafeArea()
    }

    private func topPanel(metrics: StatsHomeMetrics) -> some View {
        ZStack(alignment: .top) {
            UnevenRoundedRectangle(
                topLeadingRadius: metrics.topCornerRadius,
                bottomLeadingRadius: metrics.headerCornerRadius,
                bottomTrailingRadius: metrics.headerCornerRadius,
                topTrailingRadius: metrics.topCornerRadius,
                style: .continuous
            )
            .fill(Color.statsHeaderBackground)
            .ignoresSafeArea(edges: .top)

            Button(action: {
                // TODO: Open scan entry.
            }) {
                Image(systemName: "viewfinder")
                    .font(.system(size: metrics.scanIconSize, weight: .medium))
                    .foregroundStyle(.white.opacity(0.92))
                    .frame(width: metrics.scanHitSize, height: metrics.scanHitSize)
            }
            .buttonStyle(.plain)
            .position(x: metrics.scanCenterX, y: metrics.scanCenterY)

            flowerStage(metrics: metrics)
                .frame(width: metrics.flowerStageWidth, height: metrics.flowerStageHeight)
                .position(x: metrics.designCenterX, y: metrics.flowerStageCenterY)

            VStack(alignment: .leading, spacing: metrics.monthToDateSpacing) {
                Text("11月")
                    .font(.system(size: metrics.monthFontSize, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)

                dateSelector(metrics: metrics)
                    .frame(height: metrics.dateSelectorHeight)
            }
            .padding(.horizontal, metrics.horizontalPadding)
            .frame(width: metrics.designWidthScaled)
            .position(x: metrics.designCenterX, y: metrics.calendarCenterY)

            HStack(spacing: metrics.cardGap) {
                StatsSummaryCard(
                    title: "当日锻炼",
                    value: "7",
                    unit: "个部位",
                    courseCount: "32",
                    accentColor: Color.statsYellow,
                    metrics: metrics
                )

                StatsSummaryCard(
                    title: "当日复健",
                    value: "68",
                    unit: "个部位",
                    courseCount: "27",
                    accentColor: Color.statsPurple,
                    metrics: metrics
                )
            }
            .frame(width: metrics.cardsRowWidth, height: metrics.cardHeight)
            .position(x: metrics.designCenterX, y: metrics.statsCardsCenterY)
        }
    }

    private func flowerStage(metrics: StatsHomeMetrics) -> some View {
        ZStack {
            if let url = Bundle.main.url(forResource: "flower_bloom", withExtension: "mov") {
                LoopingFlowerVideoView(url: url)
                    .frame(width: metrics.flowerImageWidth, height: metrics.flowerVideoHeight)
                    .allowsHitTesting(false)
                    .clipShape(Rectangle())
                    .blendMode(.screen)
            } else if let image = UIImage.flowerReferenceImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.flowerImageWidth)
            } else {
                Image(systemName: "camera.macro")
                    .font(.system(size: metrics.x(118), weight: .light))
                    .foregroundStyle(.white.opacity(0.9))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    private func dateSelector(metrics: StatsHomeMetrics) -> some View {
        HStack(spacing: 0) {
            ForEach(days) { day in
                VStack(spacing: metrics.dateMarkerGap) {
                    VStack(spacing: metrics.dateTextGap) {
                        Text(day.weekday)
                            .font(.system(size: day.isToday ? metrics.todayWeekdayFontSize : metrics.weekdayFontSize, weight: day.isToday ? .medium : .regular, design: .rounded))

                        Text(day.day)
                            .font(.system(size: metrics.dayFontSize, weight: .semibold, design: .rounded))
                    }
                    .foregroundStyle(day.isToday ? Color.statsHeaderBackground : .white.opacity(0.82))
                    .frame(width: metrics.dayPillWidth, height: metrics.dayPillHeight)
                    .background {
                        if day.isToday {
                            RoundedRectangle(cornerRadius: metrics.dayPillCornerRadius, style: .continuous)
                                .fill(Color.statsYellow)
                        }
                    }

                    DateMarkerView(marker: day.marker, metrics: metrics)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }

    private func moreActivitiesSection(metrics: StatsHomeMetrics) -> some View {
        VStack(alignment: .leading, spacing: metrics.moreTitleToCardsSpacing) {
            Text("更多活动")
                .font(.system(size: metrics.moreTitleFontSize, weight: .bold, design: .rounded))
                .foregroundStyle(Color(red: 0.05, green: 0.06, blue: 0.08))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: metrics.activityCardGap) {
                    ActivityCardPlaceholder(
                        imageName: "stats_activity_primary",
                        width: metrics.activityCardWidth,
                        metrics: metrics
                    )

                    ActivityCardPlaceholder(
                        imageName: "stats_activity_secondary",
                        width: metrics.activitySecondaryVisibleWidth,
                        metrics: metrics
                    )
                }
                .padding(.trailing, metrics.horizontalPadding)
            }
            .frame(height: metrics.activityCardHeight)
        }
        .padding(.top, metrics.moreTopPadding)
        .padding(.leading, metrics.horizontalPadding)
        .padding(.bottom, metrics.tabBarHeight)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.statsPageBackground)
    }

    private func tabBarPlaceholder(metrics: StatsHomeMetrics) -> some View {
        ZStack(alignment: .top) {
            UnevenRoundedRectangle(
                topLeadingRadius: metrics.tabBarCornerRadius,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: metrics.tabBarCornerRadius,
                style: .continuous
            )
                .fill(.white)
                .shadow(color: .black.opacity(0.04), radius: metrics.y(9), y: -metrics.y(10))
                .frame(height: metrics.tabBarHeight)
                .frame(maxHeight: .infinity, alignment: .bottom)

            ReferenceImage(name: "stats_center_button")
                .frame(width: metrics.centerTabSize, height: metrics.centerTabSize)
                .clipShape(Circle())
                .position(x: metrics.designCenterX, y: metrics.centerTabCenterY)

            TabBarItemPlaceholder(systemName: "heart.circle", title: "统计", isSelected: true, metrics: metrics)
                .frame(width: metrics.tabItemWidth, height: metrics.tabItemHeight)
                .position(x: metrics.leftTabCenterX, y: metrics.tabItemCenterY)

            TabBarItemPlaceholder(systemName: "person.circle", title: "我的", isSelected: false, metrics: metrics)
                .frame(width: metrics.tabItemWidth, height: metrics.tabItemHeight)
                .position(x: metrics.rightTabCenterX, y: metrics.tabItemCenterY)
        }
        .frame(height: metrics.tabBarHeight)
    }
}

private struct StatsHomeMetrics {
    let size: CGSize

    private let designWidth: CGFloat = 375
    private let designHeight: CGFloat = 838

    var xScale: CGFloat {
        size.width / designWidth
    }

    var yScale: CGFloat {
        size.height / designHeight
    }

    func x(_ value: CGFloat) -> CGFloat { value * xScale }
    func y(_ value: CGFloat) -> CGFloat { value * yScale }

    var designWidthScaled: CGFloat { x(designWidth) }
    var designCenterX: CGFloat { x(187.5) }

    var horizontalPadding: CGFloat { x(18) }
    var headerHeight: CGFloat { y(540) }
    var topCornerRadius: CGFloat { x(18) }
    var headerCornerRadius: CGFloat { x(24) }

    var scanIconSize: CGFloat { x(27.2) }
    var scanHitSize: CGFloat { x(44) }
    var scanCenterX: CGFloat { x(329) }
    var scanCenterY: CGFloat { y(86) }

    var flowerStageWidth: CGFloat { x(350) }
    var flowerStageHeight: CGFloat { y(184) }
    var flowerStageCenterY: CGFloat { y(204) }
    var flowerImageWidth: CGFloat { x(228) }
    var flowerVideoHeight: CGFloat { x(178.8) }

    var calendarCenterY: CGFloat { y(363) }
    var monthToDateSpacing: CGFloat { y(12) }
    var monthFontSize: CGFloat { x(14) }
    var dateSelectorHeight: CGFloat { y(84) }
    var dateRowWidth: CGFloat { x(351) }
    var dayPillWidth: CGFloat { x(40) }
    var dayPillHeight: CGFloat { y(44) }
    var dayPillCornerRadius: CGFloat { x(8) }
    var todayWeekdayFontSize: CGFloat { x(12) }
    var weekdayFontSize: CGFloat { x(12) }
    var dayFontSize: CGFloat { x(14) }
    var dateTextGap: CGFloat { y(0) }
    var dateMarkerGap: CGFloat { y(6) }
    var markerDotSize: CGFloat { x(6) }
    var markerInnerSize: CGFloat { x(8) }
    var markerOuterSize: CGFloat { x(12) }
    var markerRingWidth: CGFloat { x(2) }

    var cardsRowWidth: CGFloat { x(339) }
    var cardGap: CGFloat { x(12) }
    var cardHeight: CGFloat { y(102) }
    var statsCardsCenterY: CGFloat { y(465) }
    var statsCardCornerRadius: CGFloat { x(18) }
    var cardHorizontalPadding: CGFloat { x(18) }
    var cardVerticalPadding: CGFloat { y(12) }
    var cardTitleFontSize: CGFloat { x(16) }
    var cardValueFontSize: CGFloat { x(22) }
    var cardUnitFontSize: CGFloat { x(12) }
    var cardCourseFontSize: CGFloat { x(12) }
    var cardCourseCountFontSize: CGFloat { x(12) }
    var cardContentSpacing: CGFloat { y(2) }
    var cardCourseTopPadding: CGFloat { y(6) }

    var moreActivitiesTop: CGFloat { headerHeight }
    var moreTopPadding: CGFloat { y(12) }
    var moreTitleFontSize: CGFloat { x(18) }
    var moreTitleToCardsSpacing: CGFloat { y(12) }
    var activityCardWidth: CGFloat { x(281) }
    var activitySecondaryVisibleWidth: CGFloat { x(128) }
    var activityCardHeight: CGFloat { y(149) }
    var activityCardGap: CGFloat { x(12) }
    var activityCardCornerRadius: CGFloat { x(12) }
    var activityTitleFontSize: CGFloat { x(12) }

    var tabBarHeight: CGFloat { y(60) }
    var tabBarCornerRadius: CGFloat { x(20) }
    var tabItemWidth: CGFloat { x(187.5) }
    var tabItemHeight: CGFloat { y(42) }
    var tabItemCenterY: CGFloat { y(30) }
    var leftTabCenterX: CGFloat { x(93.75) }
    var rightTabCenterX: CGFloat { x(281.25) }
    var tabIconSize: CGFloat { x(22) }
    var tabTitleFontSize: CGFloat { x(10) }
    var centerTabSize: CGFloat { x(54) }
    var centerTabCenterY: CGFloat { y(0) }
}

private struct StatsSummaryCard: View {
    let title: String
    let value: String
    let unit: String
    let courseCount: String
    let accentColor: Color
    let metrics: StatsHomeMetrics

    var body: some View {
        VStack(alignment: .leading, spacing: metrics.cardContentSpacing) {
            Text(title)
                .font(.system(size: metrics.cardTitleFontSize, weight: .semibold, design: .rounded))
                .foregroundStyle(.white.opacity(0.48))

            HStack(alignment: .firstTextBaseline, spacing: metrics.x(2)) {
                Text(value)
                    .font(.system(size: metrics.cardValueFontSize, weight: .bold, design: .rounded))
                    .foregroundStyle(accentColor)

                Text(unit)
                    .font(.system(size: metrics.cardUnitFontSize, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.52))
            }

            HStack(alignment: .firstTextBaseline, spacing: metrics.x(2)) {
                Text("课程")
                    .font(.system(size: metrics.cardCourseFontSize, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.5))

                Text(courseCount)
                    .font(.system(size: metrics.cardCourseCountFontSize, weight: .bold, design: .rounded))
                    .foregroundStyle(accentColor)

                Text("节")
                    .font(.system(size: metrics.cardCourseFontSize, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.5))
            }
            .padding(.top, metrics.cardCourseTopPadding)
        }
        .padding(.horizontal, metrics.cardHorizontalPadding)
        .padding(.vertical, metrics.cardVerticalPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: metrics.cardHeight)
        .background {
            RoundedRectangle(cornerRadius: metrics.statsCardCornerRadius, style: .continuous)
                .fill(Color.white.opacity(0.13))
        }
    }
}

private struct ActivityCardPlaceholder: View {
    let imageName: String
    let width: CGFloat
    let metrics: StatsHomeMetrics

    var body: some View {
        ReferenceImage(name: imageName)
            .frame(width: width, height: metrics.activityCardHeight)
            .clipShape(RoundedRectangle(cornerRadius: metrics.activityCardCornerRadius, style: .continuous))
            .overlay {
                Color.statsHeaderBackground.opacity(0.30)
                    .clipShape(RoundedRectangle(cornerRadius: metrics.activityCardCornerRadius, style: .continuous))
            }
    }
}

private struct ReferenceImage: View {
    let name: String

    var body: some View {
        if let image = UIImage.referenceImage(named: name) {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
        }
    }
}

private struct LoopingFlowerVideoView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> LoopingVideoUIView {
        LoopingVideoUIView(url: url)
    }

    func updateUIView(_ uiView: LoopingVideoUIView, context: Context) {
        uiView.configure(url: url)
    }
}

private final class LoopingVideoUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var player: AVPlayer?
    private var timeObserver: Any?
    private var breathingTimer: Timer?
    private var currentURL: URL?
    private var breathStart = CMTime.zero
    private var breathEnd = CMTime.zero
    private var isPlayingBackward = false

    init(url: URL) {
        super.init(frame: .zero)
        layer.addSublayer(playerLayer)
        playerLayer.videoGravity = .resizeAspect
        backgroundColor = .clear
        configure(url: url)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }

    func configure(url: URL) {
        guard currentURL != url else {
            if breathingTimer == nil {
                player?.play()
            }
            return
        }

        removeTimeObserver()
        stopBreathingLoop()
        currentURL = url
        let item = AVPlayerItem(url: url)
        let player = AVPlayer(playerItem: item)
        player.isMuted = true
        player.actionAtItemEnd = .none
        playerLayer.player = player
        self.player = player

        Task { @MainActor in
            let duration = try? await item.asset.load(.duration)
            let totalDuration = duration ?? CMTime(seconds: 5.76, preferredTimescale: 600)
            breathEnd = CMTimeSubtract(totalDuration, CMTime(seconds: 0.04, preferredTimescale: 600))
            breathStart = max(
                CMTime.zero,
                CMTimeSubtract(breathEnd, CMTime(seconds: 1.0, preferredTimescale: 600))
            )
            addTimeObserver()
            player.play()
        }
    }

    deinit {
        removeTimeObserver()
        stopBreathingLoop()
    }

    private func addTimeObserver() {
        guard let player, timeObserver == nil else { return }

        timeObserver = player.addPeriodicTimeObserver(
            forInterval: CMTime(seconds: 0.04, preferredTimescale: 600),
            queue: .main
        ) { [weak self] time in
            self?.handlePlaybackProgress(time)
        }
    }

    private func removeTimeObserver() {
        if let timeObserver, let player {
            player.removeTimeObserver(timeObserver)
        }
        timeObserver = nil
    }

    private func handlePlaybackProgress(_ time: CMTime) {
        guard let player else { return }
        let edgeTolerance = CMTime(seconds: 0.03, preferredTimescale: 600)

        if time >= CMTimeSubtract(breathEnd, edgeTolerance) {
            removeTimeObserver()
            player.pause()
            startBreathingLoop()
        }
    }

    private func startBreathingLoop() {
        guard breathingTimer == nil else { return }

        isPlayingBackward = true
        player?.seek(to: breathEnd, toleranceBefore: .zero, toleranceAfter: .zero) { [weak self] _ in
            self?.player?.rate = -0.6
        }

        breathingTimer = Timer.scheduledTimer(withTimeInterval: 1.0 / 0.6, repeats: true) { [weak self] _ in
            self?.toggleBreathingDirection()
        }
    }

    private func stopBreathingLoop() {
        breathingTimer?.invalidate()
        breathingTimer = nil
    }

    private func toggleBreathingDirection() {
        guard let player else { return }

        if isPlayingBackward {
            isPlayingBackward = false
            player.seek(to: breathStart, toleranceBefore: .zero, toleranceAfter: .zero) { [weak player] _ in
                player?.rate = 0.6
            }
        } else {
            isPlayingBackward = true
            player.seek(to: breathEnd, toleranceBefore: .zero, toleranceAfter: .zero) { [weak player] _ in
                player?.rate = -0.6
            }
        }
    }
}

private struct TabBarItemPlaceholder: View {
    let systemName: String
    let title: String
    let isSelected: Bool
    let metrics: StatsHomeMetrics

    var body: some View {
        VStack(spacing: metrics.y(0)) {
            ZStack {
                if isSelected {
                    Image(systemName: systemName)
                        .font(.system(size: metrics.tabIconSize, weight: .semibold))
                        .foregroundStyle(Color.statsYellow, Color.statsHeaderBackground)
                } else {
                    Image(systemName: systemName)
                        .font(.system(size: metrics.tabIconSize, weight: .regular))
                        .foregroundStyle(Color(red: 0.55, green: 0.55, blue: 0.57))
                }
            }
            .frame(width: metrics.tabIconSize, height: metrics.tabIconSize)

            Text(title)
                .font(.system(size: metrics.tabTitleFontSize, weight: .semibold, design: .rounded))
        }
        .foregroundStyle(isSelected ? Color.statsHeaderBackground : Color(red: 0.44, green: 0.44, blue: 0.44))
    }
}

private struct DateMarkerView: View {
    let marker: StatsDay.Marker
    let metrics: StatsHomeMetrics

    var body: some View {
        switch marker {
        case .none:
            Color.clear
                .frame(width: metrics.markerOuterSize, height: metrics.markerOuterSize)
        case .dot:
            Circle()
                .fill(Color.statsYellow)
                .frame(width: metrics.markerDotSize, height: metrics.markerDotSize)
        case .ring:
            Circle()
                .fill(Color.statsYellow)
                .frame(width: metrics.markerInnerSize, height: metrics.markerInnerSize)
                .overlay {
                    Circle()
                        .stroke(Color.statsPurple, lineWidth: metrics.markerRingWidth)
                        .frame(width: metrics.markerOuterSize, height: metrics.markerOuterSize)
                }
                .frame(width: metrics.markerOuterSize, height: metrics.markerOuterSize)
        }
    }
}

private struct StatsDay: Identifiable {
    enum Marker {
        case none
        case dot
        case ring
    }

    let id = UUID()
    let weekday: String
    let day: String
    let isToday: Bool
    let marker: Marker
}

private extension Color {
    static let statsHeaderBackground = Color(red: 0.17, green: 0.17, blue: 0.18)
    static let statsPageBackground = Color(red: 0.95, green: 0.96, blue: 0.97)
    static let statsYellow = Color(red: 1.0, green: 0.88, blue: 0.28)
    static let statsPurple = Color(red: 0.54, green: 0.43, blue: 0.94)
}

private extension UIImage {
    static var flowerReferenceImage: UIImage? {
        guard let path = Bundle.main.path(forResource: "flower_100_cutout", ofType: "png") else {
            return nil
        }

        return UIImage(contentsOfFile: path)
    }

    static func referenceImage(named name: String) -> UIImage? {
        guard let path = Bundle.main.path(forResource: name, ofType: "png") else {
            return nil
        }

        return UIImage(contentsOfFile: path)
    }
}

#Preview {
    StatsHomeView()
}
