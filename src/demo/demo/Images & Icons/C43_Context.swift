//
//  C43_Context.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C43_Context: View {
    var body: some View {
        TabView {
            Text("You View Here")
                .tabItem {
                    Label("Home", systemImage: "person")
                        .symbolVariant(.none)
                }
            Text("your Activity View Here")
                .tabItem {
                    Label("Activity", systemImage: "bell")
                        .symbolVariant(.none)
                }
        }
    }
}

struct C43_Context_Previews: PreviewProvider {
    static var previews: some View {
        C43_Context()
//        C43_Context()          .previewDevice(PreviewDevice(rawValue: "Mac"))

    }
}
