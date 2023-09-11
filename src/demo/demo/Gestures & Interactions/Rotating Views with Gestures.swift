//
//  Rotating Views with Gestures.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI
//⚠️按住 option
struct Rotating_Views_with_Gestures: View {
    @State private var angle: Angle = .degrees(0)

    var body: some View {
        Rectangle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .rotationEffect(angle)
            .gesture(RotationGesture()
                .onChanged({ angle in
                    self.angle = angle
                }))
            
    }
}

struct Rotating_Views_with_Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Rotating_Views_with_Gestures()
    }
}
