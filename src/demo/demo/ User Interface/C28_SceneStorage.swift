//
//  C28_SceneStorage.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C28_SceneStorage: View {
    @SceneStorage("selectedTab") var selectedTab: String?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 1")
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle")
                }
                .tag("tab1")
            Text("Tab 2")
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
                .tag("Tab2")
        }
    }
}

struct C28_SceneStorage_Previews: PreviewProvider {
    static var previews: some View {
        C28_SceneStorage()
    }
}
