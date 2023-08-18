//
//  C06_ListView.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C06_ListView: View {
    let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6", "Task 7"]
    var body: some View {
        List(tasks, id: \.self) { task in
            Text(task)
        }
    }
}

struct C06_ListView_Previews: PreviewProvider {
    static var previews: some View {
        C06_ListView()
    }
}
