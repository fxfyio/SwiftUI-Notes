//
//  C16_ CustomShapeView.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C16__CustomShapeView: View {
    var body: some View {
        DiamondShape()
            .fill(.red)
            .frame(width: 200, height: 200)
    }
}

struct C16__CustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        C16__CustomShapeView()
    }
}

struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path  = Path()
        let center = CGPoint(x: rect.width / 2, y: rect.height  / 2)
        path.move(to: CGPoint(x: center.x, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: center.y))
        path.addLine(to: CGPoint(x: center.x, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: center.y))
        path.addLine(to: CGPoint(x: center.x, y: 0))
        return path
    }
    
    
}
