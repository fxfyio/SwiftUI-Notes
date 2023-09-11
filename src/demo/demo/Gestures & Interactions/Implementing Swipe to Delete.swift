//
//  Implementing Swipe to Delete.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Implementing_Swipe_to_Delete: View {
    @State private var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) {
                    item in
                    Text(item)
                }
             }
            .navigationTitle("Swipe to Delete")
        }
    }
    
    private func deleteItem(at offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
}

struct Implementing_Swipe_to_Delete_Previews: PreviewProvider {
    static var previews: some View {
        Implementing_Swipe_to_Delete()
    }
}
