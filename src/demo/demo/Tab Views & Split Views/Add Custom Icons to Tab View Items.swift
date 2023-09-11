//
//  Add Custom Icons to Tab View Items.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Add_Custom_Icons_to_Tab_View_Items: View {
    var body: some View {
        TabView {
            Text("Here comes the sun 🎶 !")
                .tabItem {
                    Image("HappySun")
                    Text("Sun")
                }
            Text("I see a good moon rising 🎶 !")
                .tabItem {
                    Image("HappyMoon")
                    Text("Moon")
                }
        }
    }
}

struct Add_Custom_Icons_to_Tab_View_Items_Previews: PreviewProvider {
    static var previews: some View {
        Add_Custom_Icons_to_Tab_View_Items()
    }
}
