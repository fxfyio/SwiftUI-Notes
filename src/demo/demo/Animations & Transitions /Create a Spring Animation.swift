//
//  Create a Spring Animation.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Spring_Animation: View {
    @State private var angle: Double = 0.0

    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 150, height: 150)
            .rotationEffect(.degrees(angle))
            .onTapGesture {
                angle += 360
            }
            .animation(.spring(response: 0.5, dampingFraction: 0.4), value: angle)
    }
}

struct Create_a_Spring_Animation_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Spring_Animation()
    }
}
