import Observation

@Observable
final class HomeViewModel {
    private(set) var selectedPosture: DuckPosture

    init(selectedPosture: DuckPosture = .standing) {
        self.selectedPosture = selectedPosture
    }

    func select(_ posture: DuckPosture) {
        selectedPosture = posture
    }

    func handleSwipe(translation: Double) {
        let swipeThreshold = 44.0

        if translation <= -swipeThreshold {
            selectedPosture = selectedPosture.stateAfterSwipingLeft
        } else if translation >= swipeThreshold {
            selectedPosture = selectedPosture.stateAfterSwipingRight
        }
    }
}
