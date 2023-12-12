//
//  swiftdata_demoApp.swift
//  swiftdata_demo
//
//  Created by Omer Cagri Sayir on 12.12.2023.
//

import SwiftUI
import SwiftData

@main
struct swiftdata_demoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: DataItem.self, isAutosaveEnabled: true)
        }
    }
}
