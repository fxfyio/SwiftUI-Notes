//
//  Animate a View's Opacity.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Animate_a_View_s_Opacity: View {
    @State private var opactity: Double = 0.0
    
    
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .opacity(opactity)
                .font(.largeTitle)
                .padding()
            
            Button(opactity == 0.0 ? "Fade In": "Fade out") {
                withAnimation(.easeInOut(duration: 2)) {
                    opactity = opactity == 0.0 ? 1.0 : 0.0
                }
            }
        }
    }
}

struct Animate_a_View_s_Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Animate_a_View_s_Opacity()
    }
}
