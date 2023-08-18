//
//  C44_Custom Shape for an Image.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C44_Custom_Shape_for_an_Image: View {
    var body: some View {
        Image("TwoCapybaras")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(StarShape(points: 5, smoothness: 0.4))
    }
}

struct C44_Custom_Shape_for_an_Image_Previews: PreviewProvider {
    static var previews: some View {
        C44_Custom_Shape_for_an_Image()
    }
}

struct StarShape: Shape {
    let points: Int
    //平滑度
    let smoothness: CGFloat
    
    func path(in rect: CGRect) -> Path {
        assert(points >= 2, "A star must have at least 2 points")
        let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)
        let outerRadius = min(rect.width, rect.height) / 2.0
        let innerRadius = outerRadius * smoothness
        let path = Path { path in
            let angleIncrement = .pi * 2 / CGFloat(points)
            let rotationOffset = CGFloat.pi / 2
            
            for point in 0..<points {
                let angle = angleIncrement * CGFloat(point) - rotationOffset
                let tippedAngle = angle + angleIncrement / 2
                
                let outerPoint = CGPoint(x: center.x + cos(angle) * outerRadius, y: center.y + sin(angle) * outerRadius)
                let innerPoint = CGPoint(x: center.x + cos(tippedAngle) * innerRadius, y: center.y + sin(tippedAngle) * innerRadius)
                
                if point == 0 {
                    path.move(to: outerPoint)
                } else {
                    path.addLine(to: outerPoint)
                }
                
                path.addLine(to: innerPoint)
            }
            
            path.closeSubpath()
        }
        return path
    }
    
    
}
