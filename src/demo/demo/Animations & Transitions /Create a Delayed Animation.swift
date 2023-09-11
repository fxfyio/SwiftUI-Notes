//
//  Create a Delayed Animation.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Delayed_Animation: View {
    @State private var isAnimating = false

    var body: some View {
        VStack {
            Button("Animate") {
                withAnimation(.easeInOut(duration: 2).delay(1)) {
                    isAnimating.toggle()
                }
            }
            .padding()
            RoundedRectangle(cornerRadius: isAnimating ? 50: 10)
                .foregroundColor(.blue)
                .frame(width: isAnimating ? 300: 100, height: isAnimating ? 300: 100)
                .animation(.easeInOut(duration: 2), value: isAnimating)
        }
    }
}

struct Create_a_Delayed_Animation_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Delayed_Animation()
    }
}
