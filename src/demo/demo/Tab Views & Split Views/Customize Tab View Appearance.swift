//
//  Customize Tab View Appearance.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Customize_Tab_View_Appearance: View {
    var body: some View {
        TabView {
            Text("First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
                .tag(1)
                .toolbarBackground(.hidden, for: .tabBar)
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
                .tag(2)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.orange.opacity(0.8), for: .tabBar)
            Text("Third Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
                .tag(3)
        }
    }
}

struct Customize_Tab_View_Appearance_Previews: PreviewProvider {
    static var previews: some View {
        Customize_Tab_View_Appearance()
    }
}
