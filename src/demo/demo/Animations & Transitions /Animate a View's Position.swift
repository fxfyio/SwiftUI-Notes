//
//  Animate a View's Position.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Animate_a_View_s_Position: View {
    @State var offset = CGSize(width: 0, height: 0)
    var body: some View {
        Image(systemName: "arrow.up")
            .font(.largeTitle)
            .offset(offset)
            .animation(.spring(), value: offset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        offset = value.translation
                    })
                    .onEnded({ _ in
                        withAnimation {
                            offset = .zero
                        }
                    })
            )
    }
}

struct Animate_a_View_s_Position_Previews: PreviewProvider {
    static var previews: some View {
        Animate_a_View_s_Position()
    }
}
