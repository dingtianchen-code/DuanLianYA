//
//  __YATests.swift
//  锻炼YATests
//
//  Created by daveding on 2026/7/8.
//

import Testing
@testable import 锻炼YA

struct __YATests {

    @Test @MainActor
    func duckHomeStartsStanding() {
        let viewModel = HomeViewModel()

        #expect(viewModel.selectedPosture == .standing)
    }

    @Test @MainActor
    func duckHomeSwitchesPostureWithHorizontalSwipes() {
        let viewModel = HomeViewModel()

        viewModel.handleSwipe(translation: -80)
        #expect(viewModel.selectedPosture == .sitting)

        viewModel.select(.standing)
        viewModel.handleSwipe(translation: 80)
        #expect(viewModel.selectedPosture == .lying)
    }

    @Test @MainActor
    func shortDragDoesNotSwitchPosture() {
        let viewModel = HomeViewModel()

        viewModel.handleSwipe(translation: 20)

        #expect(viewModel.selectedPosture == .standing)
    }

}
