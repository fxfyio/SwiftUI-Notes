//
//  C47_Blend Two Images.swift
//  demo
//
//  Created by Eric on 8/21/23.
//

import SwiftUI

struct C47_Blend_Two_Images: View {
    var body: some View {
        ZStack {
            Image("SunriseTent")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            Image("WavyPattern")
                .resizable()
                .scaledToFill()
                .blendMode(.multiply)
                .opacity(0.7)
        }
    }
}

struct C47_Blend_Two_Images_Previews: PreviewProvider {
    static var previews: some View {
        C47_Blend_Two_Images()
    }
}
