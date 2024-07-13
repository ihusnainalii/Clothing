//
//  ClothingApp.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import SwiftUI
import SwiftData

@main
struct ClothingApp: App {
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
            AppTabView().loadView()
        }
        .modelContainer(sharedModelContainer)
    }
}
