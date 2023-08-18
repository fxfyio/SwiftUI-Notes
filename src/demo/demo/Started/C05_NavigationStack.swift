//
//  C05_NavigationStack.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C05_NavigationStack: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("welcome to my app")
                    .padding()
                    .font(.largeTitle)
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Settings tapped")
                    } label: {
                        Text("Settings")
                    }
                    
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct C05_NavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        C05_NavigationStack()
    }
}
