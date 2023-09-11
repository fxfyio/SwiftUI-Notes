//
//  Create a Circular Progress Bar.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Circular_Progress_Bar: View {
    @State private var progress: CGFloat = 0.2

    var body: some View {
        VStack {
            CircularProgressView(progress: progress)
                .frame(width: 200, height: 200)
            Slider(value: $progress, in: 0...1)
                .padding()
        }
    }
}

struct Create_a_Circular_Progress_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Circular_Progress_Bar()
    }
}

struct CircularProgressView: View {
    let progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.1)
                .foregroundColor(.blue)
            Circle()
                .trim(from: 0.0, to: min(progress, 1))
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)
        }
    }
}
