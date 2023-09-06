//
//  Implement Section Headers in a List.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI
struct Item: Identifiable {
    let id = UUID()
    let name: String
}

struct Implement_Section_Headers_in_a_List: View {
    let sectionsAndItems: [String: [Item]] = [
        "Section 1:": [
            Item(name: "Item 1"),
            Item(name: "Item 2")
        ],
        "Section 2:": [
            Item(name: "Item 3"),
            Item(name: "Item 4")
        ]
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(sectionsAndItems.keys), id: \.self) { section in
                    Section(header: Text(section)) {
                        ForEach(sectionsAndItems[section] ?? []) { item in
                            Text(item.name)
                        }
                    }
                }
            }.navigationTitle("My List")
        }
    }
}

struct Implement_Section_Headers_in_a_List_Previews: PreviewProvider {
    static var previews: some View {
        Implement_Section_Headers_in_a_List()
    }
}
