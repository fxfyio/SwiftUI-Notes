//
//  C11_Shadows.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C11_Shadows: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .background(Color.white)
                .shadow(radius: 10)
            
            Circle()
                .fill(.blue)
                .shadow(color: .purple, radius: 10, x: 0, y: 0)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        
    }
}

struct C11_Shadows_Previews: PreviewProvider {
    static var previews: some View {
        C11_Shadows()
    }
}
