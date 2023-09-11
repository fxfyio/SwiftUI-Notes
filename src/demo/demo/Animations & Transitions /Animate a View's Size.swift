//
//  Animate a View's Size.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Animate_a_View_s_Size: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Button("Tap Me!") {
            scale += 0.5
        }
        .scaleEffect(scale)
        .animation(.easeInOut(duration: 0.2), value: scale)
    }
}

struct Animate_a_View_s_Size_Previews: PreviewProvider {
    static var previews: some View {
        Animate_a_View_s_Size()
    }
}
