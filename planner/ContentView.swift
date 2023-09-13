//
//  ContentView.swift
//  planner
//
//  Created by Gabriel Azevedo on 09/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ProjectList()
        }
    }
}

#Preview {
    MainActor.assumeIsolated{
        ContentView()
            .modelContainer(for: [
                Task.self,
                Project.self
            ])
    }
}

