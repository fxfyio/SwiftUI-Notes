//
//  Implementing Dragging.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Implementing_Dragging: View {
    @State private var circlePosition = CGPoint(x: 100, y: 100)

    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .position(circlePosition)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        self.circlePosition = gesture.location
                    })
            )
    }
}

struct Implementing_Dragging_Previews: PreviewProvider {
    static var previews: some View {
        Implementing_Dragging()
    }
}
