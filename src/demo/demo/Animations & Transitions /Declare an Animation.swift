//
//  Declare an Animation.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Declare_an_Animation: View {
    
    @State private var isAnimation = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue)
            .frame(width: isAnimation ? 200: 100, height: 100)
            .animation(.linear(duration: 0.25), value: isAnimation)
            .onTapGesture {
                isAnimation.toggle()
            }
    }
}

struct Declare_an_Animation_Previews: PreviewProvider {
    static var previews: some View {
        Declare_an_Animation()
    }
}
