//
//  Using LazyVGrid & LazyHGrid for Grid Layouts.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Using_LazyVGrid___LazyHGrid_for_Grid_Layouts: View {
    var body: some View {
        VStack {
            let columns = [
              GridItem(.flexible()),
              GridItem(.flexible())
            ]
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<10) { index in
                    Text("Item \(index)")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            
            Divider()
            let rows = [
                GridItem(.fixed(100)),
                GridItem(.flexible()),
            ]
            
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(0..<10) { index in
                    Text("Item \(index)")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            
            
        }
        

    }
}

struct Using_LazyVGrid___LazyHGrid_for_Grid_Layouts_Previews: PreviewProvider {
    static var previews: some View {
        Using_LazyVGrid___LazyHGrid_for_Grid_Layouts()
    }
}
