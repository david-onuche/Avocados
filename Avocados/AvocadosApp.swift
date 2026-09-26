//
//  AvocadosApp.swift
//  Avocados
//
//  Created by David Onuche on 25/09/2026.
//

import SwiftUI
import SwiftData

@main
struct AvocadosApp: App {
    @State private var isShowingLaunchScreen: Bool = true

    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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
            ZStack {
                if isShowingLaunchScreen {
                    LaunchScreenView()
                        .transition(.opacity)
                } else {
                    AppView()
                        .transition(.opacity)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation(.easeOut(duration: 0.8)) {
                        isShowingLaunchScreen = false
                    }
                }
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
