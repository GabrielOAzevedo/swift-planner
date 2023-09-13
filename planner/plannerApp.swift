//
//  plannerApp.swift
//  planner
//
//  Created by Gabriel Azevedo on 09/09/23.
//

import SwiftUI
import SwiftData

@main
struct plannerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [
                    Task.self,
                    Project.self
                ])
        }
    }
}
