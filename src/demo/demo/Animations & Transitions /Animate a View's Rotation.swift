//
//  Animate a View's Rotation.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Animate_a_View_s_Rotation: View {
    @State private var rotate = false
    
    var body: some View {
        VStack {
            Button {
                rotate.toggle()
            } label: {
                Text("Rotale")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
            }
            .frame(width: 160, height: 100)
            .rotation3DEffect(.degrees(rotate ? 180: 0), axis:(x: 0, y:1, z:0 ))
            .animation(.easeInOut(duration: 0.5), value: rotate)

        }
    }
}

struct Animate_a_View_s_Rotation_Previews: PreviewProvider {
    static var previews: some View {
        Animate_a_View_s_Rotation()
    }
}
