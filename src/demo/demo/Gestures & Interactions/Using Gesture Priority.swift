//
//  Using Gesture Priority.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Using_Gesture_Priority: View {
    @State private var position = CGSize.zero

    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 100))
            .foregroundColor(.red)
            .padding()
            .offset(position)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        self.position = gesture.translation
                    })
                    .onEnded({ _ in
                        print("Drag ended")
                    })
                    .simultaneously(with: TapGesture()
                        .onEnded({ _ in
                            print("Inside Tapped")
                        }))
            )
            .highPriorityGesture(
                TapGesture()
                    .onEnded({ _ in
                        print("Tapped")
                    })
            )
    }
}

struct Using_Gesture_Priority_Previews: PreviewProvider {
    static var previews: some View {
        Using_Gesture_Priority()
    }
}
