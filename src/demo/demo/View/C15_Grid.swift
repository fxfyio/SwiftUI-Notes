//
//  C15_Grid.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C15_Grid: View {
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    let columns = [
      GridItem(.flexible()),
      GridItem(.flexible()),
      GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .frame(maxWidth: 100)
                    .frame(height: 100)
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.headline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

struct C15_Grid_Previews: PreviewProvider {
    static var previews: some View {
        C15_Grid()
    }
}
