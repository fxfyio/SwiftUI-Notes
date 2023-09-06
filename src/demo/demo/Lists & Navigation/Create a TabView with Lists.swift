//
//  Create a TabView with Lists.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Create_a_TabView_with_Lists: View {
    var animals = ["Lion", "Tiger", "Elephant", "Leopard"]
    var plants = ["Rose", "Lily", "Tulip", "Orchid"]

    var body: some View {
        TabView {
            List(animals, id: \.self) {
                animal in
                Text(animal)
            }
            .tabItem {
                Image(systemName: "hare")
                Text("Animals")
            }
            
            List(plants, id: \.self) {
                plant in
              Text(plant)
            }
            .tabItem {
                Image(systemName: "leaf")
                Text("Plants")
            }
            
        }
    }
}

struct Create_a_TabView_with_Lists_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_TabView_with_Lists()
    }
}
