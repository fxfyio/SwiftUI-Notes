//
//  C2901.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

//Best Practices for State Management in SwiftUI

class TaskManager: ObservableObject {
    @Published var tasks = [String]()
    
    func addTask(_ task: String) {
        tasks.append(task)
    }
}

struct TaskListView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var newTask = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("New task", text: $newTask)
                    .onSubmit {
                        if !newTask.isEmpty {
                            taskManager.addTask(newTask)
                            newTask = ""
                        }
                    }
                    .padding()
                List(taskManager.tasks, id: \.self) { task in
                    Text(task)
                }
            }
            .navigationTitle("Task List")
        }
    }
}


struct C2901: View {
    @StateObject var taskManager = TaskManager()
    var body: some View {
        TaskListView()
            .environmentObject(taskManager)
    }
}

struct C2901_Previews: PreviewProvider {
    static var previews: some View {
        C2901()
    }
}
