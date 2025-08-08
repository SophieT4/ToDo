//
//  NewToDoView.swift
//  ToDo
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        
            VStack {
                Text("Task title:")
                    .font(.title)
                    .fontWeight(.bold)
                
                TextField("Enter the task description...", text: $toDoItem.title)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
                
                Toggle(isOn: $toDoItem.isImportant) {
                    Text("Is it important?")
                }
                
                Button {
                    
                } label: {
                    Text("Save")
                }
            }
            .padding()
        
            func addToDo() {
               let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
                 modelContext.insert(toDo)
        }
        }
        }

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
