//
//  C14_Circular.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C14_Circular: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, \nCircular View!")
                .multilineTextAlignment(.center)
                .padding(50)
                .foregroundColor(.white)
                .background(Circle().fill(.blue))
            Spacer()
            // 背景大小
            Text("Hello, \nCircular View!")
                .multilineTextAlignment(.center)
                .padding(50)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 200, height: 200)
                )
            Spacer()

        }
    }
}

struct C14_Circular_Previews: PreviewProvider {
    static var previews: some View {
        C14_Circular()
    }
}
