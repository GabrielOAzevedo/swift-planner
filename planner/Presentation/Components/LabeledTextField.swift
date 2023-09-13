//
//  Input.swift
//  planner
//
//  Created by Gabriel Azevedo on 09/09/23.
//

import SwiftUI

struct LabeledTextField: View {
    @State private var textInput: String = ""
    var label: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
           Text(label)
               .font(.headline)
           TextField("Enter \(label)", text: $textInput)
               .textFieldStyle(RoundedBorderTextFieldStyle())
        }
       .padding()
    }
}

#Preview {
    LabeledTextField(label: "Task name")
}
