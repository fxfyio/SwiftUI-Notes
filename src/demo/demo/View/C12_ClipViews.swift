//
//  C12_ClipViews.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C12_ClipViews: View {
    var body: some View {
        VStack {
            Text("Circle")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .clipShape(Circle())

            Text("Ellipse")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .background(.green)
                .clipShape(Ellipse())
            
            Text("Capsule")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
            
            Text("Custom")
                .frame(width: 200, height: 100)
                .font(.title)
                .padding()
                .background(.yellow)
                .foregroundColor(.white)
                .clipShape(CustomShap())
            
        }

    }
}

struct CustomShap: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()

        return path
    }
}

struct C12_ClipViews_Previews: PreviewProvider {
    static var previews: some View {
        C12_ClipViews()
    }
}
