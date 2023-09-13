//
//  AddButton.swift
//  planner
//
//  Created by Gabriel Azevedo on 09/09/23.
//

import SwiftUI

struct AddButton: View {
    @State private var text: String = ""
    var label: String
    var placeholder: String
    var action: (String) -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(label)
                    .font(.headline)
            }
            
            HStack(content: {
                TextField("\(placeholder)", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    if (!text.isEmpty) {
                        action(text)
                        text = ""
                    }
                }) {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 10))
                }
            })            
        }
    }
}

#Preview {
    AddButton(label: "Task name", placeholder: "New task", action: { newText in
        print("\(newText)")
    }).padding()
}
