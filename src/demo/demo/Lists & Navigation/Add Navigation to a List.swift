//
//  Add Navigation to a List.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI
struct Park: Hashable {
    let name: String
    let imageName: String
    let description: String
}
extension Park: Identifiable {
    var id: String {
        return name
    }
}

struct Add_Navigation_to_a_List: View {
    
    @State private var presentedpatks: [Park] = []
    
    var parks: [Park] = [
        Park(name: "Yosemite", imageName: "yosemite", description: "Yosemite National Park"),
        Park(name: "Sequoia", imageName: "sequoia", description: "Sequoia National Park"),
        Park(name: "Point Reyes", imageName: "point_reyes", description: "Point Reyes National Seashore")
    ]
    
    var body: some View {
        NavigationStack(path: $presentedpatks, root: {
            List(parks) { park in
                NavigationLink(park.name, value: park)
            }.navigationDestination(for: Park.self) { park in
                ParkDetailsView(park: park)
            }
            
        })
    }
}

struct ParkDetailsView: View {
    let park: Park
    
    var body: some View {
        VStack {
            Image(park.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text(park.name)
                .font(.title)
                .foregroundColor(.primary)
            Text(park.description)
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
}


struct Add_Navigation_to_a_List_Previews: PreviewProvider {
    static var previews: some View {
        Add_Navigation_to_a_List()
    }
}
