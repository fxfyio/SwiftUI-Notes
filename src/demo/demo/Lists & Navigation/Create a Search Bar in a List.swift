//
//  Create a Search Bar in a List.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI
struct Park1: Identifiable {
  let id = UUID()
  let name: String
}
struct Create_a_Search_Bar_in_a_List: View {
    @State private var searchText = ""
    let parks: [Park1] = [
        Park1(name: "Yosemite National Park"),
        Park1(name: "Redwood National and State Parks"),
        Park1(name: "Sequoia National Park"),
        Park1(name: "Pinnacles National Park"),
        Park1(name: "Joshua Tree National Park"),
        Park1(name: "Death Valley National Park"),
        Park1(name: "Channel Islands National Park"),
        Park1(name: "Kings Canyon National Park"),
        Park1(name: "Lassen Volcanic National Park"),
        Park1(name: "Point Reyes National Seashore")
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(parks.filter{ searchText.isEmpty || $0.name.localizedStandardContains(searchText)}) { park in
                    Text(park.name)
                }
            }
            .navigationTitle("California parks")
            .searchable(text: $searchText)
            
        }
    }
}

struct Create_a_Search_Bar_in_a_List_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Search_Bar_in_a_List()
    }
}
