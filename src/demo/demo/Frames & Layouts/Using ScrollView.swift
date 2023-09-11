//
//  Using ScrollView.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Using_ScrollView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    ForEach(1...20, id: \.self) { index in
                        Text("Row \(index)")
                            .font(.title)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            Divider()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item \(index)")
                            .font(.title)
                    }
                }
                .padding()
            }
        }
        
    }
}

struct Using_ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        Using_ScrollView()
    }
}
