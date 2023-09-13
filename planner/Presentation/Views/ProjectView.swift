//
//  ProjectView.swift
//  planner
//
//  Created by Gabriel Azevedo on 12/09/23.
//

import SwiftUI
import SwiftData

struct ProjectView: View {
   let projectId: String
    
    @Environment(\.modelContext) private var context
    @Query var taskList: [Task]
    
    init(projectId: String) {
        self._taskList = Query(filter: #Predicate<Task> {
            $0.projectId == projectId
        })
        self.projectId = projectId;
    }
    
    var body: some View {
        VStack {
            AddButton(label: "New task", placeholder: "Task name", action: {taskName in
                    context.insert(Task(name:taskName, projectId: projectId))
                }
            )
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(taskList, id: \.self) { item in
                        TaskCard(task: item, action: {
                            context.delete(item)
                        }).frame(maxWidth: .infinity)
                    }
                }.frame(maxWidth: .infinity)
            }.padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
        }
        .padding()
    }
}

#Preview {
    MainActor.assumeIsolated{
        ProjectView(projectId: "1")
            .modelContainer(for: [
                Task.self
            ])
    }
}
