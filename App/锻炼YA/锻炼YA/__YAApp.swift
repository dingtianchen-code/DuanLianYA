//
//  __YAApp.swift
//  锻炼YA
//
//  Created by daveding on 2026/7/8.
//

import SwiftUI
import SwiftData

@main
struct __YAApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            User.self,
            Profile.self,
            BodyArea.self,
            Exercise.self,
            WorkoutSession.self,
            WorkoutExercise.self,
            EncouragementAnimation.self,
            GrowthRecord.self,
            FlowerState.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
