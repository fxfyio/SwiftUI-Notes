//
//  List.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct ListDemo: View {
    
    let scientists = ["Albert Einstein", "Isaac Newton", "Marie Curie", "Charles Darwin", "Nikola Tesla"]

    
    var body: some View {
        NavigationStack {
            List(scientists, id: \.self) { scientist in
                NavigationLink(scientist, value: scientist)
            }
            .navigationDestination(for: String.self) { scientistname in
                ScientistDetailView(name: scientistname)
            }
        }
    }
}

struct ListDemo_Previews: PreviewProvider {
    static var previews: some View {
        ListDemo()
    }
}


struct ScientistDetailView: View {
    let name: String
    
    var body: some View {
        VStack {
            Text(name).font(.title)
                .padding()
            Text("More details about \(name) would be presented here." )
                .font(.body)
                .foregroundColor(.gray)
                .navigationTitle(name)
        }
    }
}
