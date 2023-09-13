//
//  ProjectList.swift
//  planner
//
//  Created by Gabriel Azevedo on 12/09/23.
//

import SwiftUI
import SwiftData

struct ProjectList: View {
    @Environment(\.modelContext) private var context
    @Query var projectList: [Project]
    
    var body: some View {
        VStack {
            AddButton(label: "New project", placeholder: "Project name", action: { newValue in
                    let project = Project(name: newValue, projectDescription: "")
                    context.insert(project)
                }
            )
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(projectList, id: \.self) { item in
                        ProjectCard(project: item).frame(maxWidth: .infinity)
                    }
                }.frame(maxWidth: .infinity)
                    .padding(2)
            }.padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
        }.padding()
    }
}

#Preview {
    MainActor.assumeIsolated{
        ProjectList()
            .modelContainer(for: [
                Project.self
            ])
    }
}
