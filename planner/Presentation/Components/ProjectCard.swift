//
//  ProjectCard.swift
//  planner
//
//  Created by Gabriel Azevedo on 12/09/23.
//

import SwiftUI

struct ProjectCard: View {
    var project: Project;
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(project.name).frame(maxWidth: .infinity, alignment: .leading).font(.title)
                    Text(project.projectDescription).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                }
                NavigationLink(destination: ProjectView(projectId: project.id.uuidString)) {
                    Image(systemName: "arrowshape.right.circle")
                        .renderingMode(.original)
                        .font(.system(size: 18))
                }.buttonStyle(NavigationButtonStyle())
            }.padding(10)
                .background()
                .cornerRadius(10.0)
                .focusable(false)
                .shadow(radius: 1)
        }
    }
}

struct NavigationButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .cornerRadius(10)
            .shadow(color: .clear, radius: 0, x: 0, y: 0)
            .border(Color.black.opacity(0))
    }
}

#Preview {
    ProjectCard(project: Project(name: "Project name", projectDescription: "Project description")).padding()
}
