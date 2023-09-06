//
//  NavigationTitle.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct NavigationTitle: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Item 1", value: "Item 1 Detail View")
                NavigationLink("Item 2", value: "Item 2 Detail View")
                NavigationLink("Item 3", value: "Item 3 Detail View")
            }
            .navigationTitle("List with Navigation")
            .navigationDestination(for: String.self) { detail in
                DetailView1(detail: detail)
            }
        }
    }
}

struct DetailView1: View {
  let detail: String
  var body: some View {
    Text(detail)
  }
}

struct NavigationTitle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitle()
    }
}
