//
//  Create a Repeating Animation.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Repeating_Animation: View {
    @State private var isAnimating = false

    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 50, height: 50)
            .scaleEffect(isAnimating ? 1.5 : 1)
            .animation(isAnimating ? .easeInOut(duration: 1).repeatForever(autoreverses: true): .default,
            value: isAnimating)
            .onAppear{
                isAnimating = true
            }
    }
}

struct Create_a_Repeating_Animation_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Repeating_Animation()
    }
}
