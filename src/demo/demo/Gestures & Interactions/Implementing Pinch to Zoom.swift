//
//  Implementing Pinch to Zoom.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Implementing_Pinch_to_Zoom: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Image(systemName: "star.circle.fill")
            .resizable()
            .scaledToFit()
            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .onChanged({ value in
                        self.scale = value.magnitude
                    })
            )
    }
}

struct Implementing_Pinch_to_Zoom_Previews: PreviewProvider {
    static var previews: some View {
        Implementing_Pinch_to_Zoom()
    }
}
