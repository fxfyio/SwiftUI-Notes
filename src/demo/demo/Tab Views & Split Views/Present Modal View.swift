//
//  Present Modal View.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Present_Modal_View: View {
    
    @State private var isPresented = false
    @State private var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("First Tab")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Tab 1")
                }
                .tag(1)
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Tab 2")
                }
        }
        .onChange(of: selectedTab) { _ in
            isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            ModalView(isPresented: self.$isPresented)
        }
    
    }
}

struct Present_Modal_View_Previews: PreviewProvider {
    static var previews: some View {
        Present_Modal_View()
    }
}


struct ModalView: View {
    @Binding var isPresented: Bool
    var body: some View {
        Text("This is a modal view.")
            .padding()
        Button("Dismiss") {
            isPresented = false
        }
    }
}
