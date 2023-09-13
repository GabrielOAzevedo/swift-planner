//
//  Project.swift
//  planner
//
//  Created by Gabriel Azevedo on 12/09/23.
//

import Foundation
import SwiftData

@Model
final class Project: Identifiable, Hashable {
    let id: UUID
    let name: String
    let projectDescription: String
    
    init(name: String, projectDescription: String) {
        self.id = UUID()
        self.name = name
        self.projectDescription = projectDescription
    }
}
