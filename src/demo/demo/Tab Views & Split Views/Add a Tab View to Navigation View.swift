//
//  Add a Tab View to Navigation View.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI


struct Add_a_Tab_View_to_Navigation_View: View {
    var body: some View {
        NavigationStack {
            TabView {
                Text("First tab")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                Text("Second Tab")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            .navigationTitle("My App")
        }
    }
}

struct Add_a_Tab_View_to_Navigation_View_Previews: PreviewProvider {
    static var previews: some View {
        Add_a_Tab_View_to_Navigation_View()
    }
}
