//
//  TaskCard.swift
//  planner
//
//  Created by Gabriel Azevedo on 09/09/23.
//

import SwiftUI

struct TaskCard: View {
    var task: Task
    var action: () -> Void
    
    var body: some View {
        VStack {
            HStack() {
                Text(task.name)
                Spacer()
                Button(action: {
                    action()
                }) {
                    Image(systemName: "trash")
                        .font(.system(size: 12))
                }.buttonStyle(NoShadowButtonStyle())
            }.frame(maxWidth: .infinity, alignment: .leading)
        }.padding(10)
        .background()
        .cornerRadius(10.0)
        .focusable(false)
    }
}

struct NoShadowButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.red)
            .cornerRadius(10)
            .shadow(color: .clear, radius: 0, x: 0, y: 0)
            .border(Color.black.opacity(0))
    }
}

#Preview {
    TaskCard(task: Task(name: "New Task", projectId: "1"), action: {}).padding()
}
