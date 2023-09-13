//
//  Task.swift
//  planner
//
//  Created by Gabriel Azevedo on 09/09/23.
//

import Foundation
import SwiftData

@Model
final class Task: Identifiable, Hashable {
    let id: UUID
    let name: String
    let projectId: String
    
    init(name: String, projectId: String) {
        self.id = UUID()
        self.name = name
        self.projectId = projectId
    }
}
