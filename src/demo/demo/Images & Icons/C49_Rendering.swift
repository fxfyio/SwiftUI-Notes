//
//  C49_renderin.swift
//  demo
//
//  Created by Eric on 8/30/23.
//

import SwiftUI

struct C49_Rendering: View {
    @State private var isSelected = false
    @State private var changeColor = false

    var body: some View {
        
        VStack {
            Button {
                isSelected.toggle()
            } label: {
                Image("TransparentHedgy")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .foregroundColor(isSelected ? .brown: .gray)
            }
            
            Divider()
            Image("TransparentHedgy")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(changeColor ? .purple: .gray )
                .onAppear {
                    withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses:true)) {
                        changeColor.toggle()
                    }
                }
            
        }
        


    }
}

struct C49_Rendering_Previews: PreviewProvider {
    static var previews: some View {
        C49_Rendering()
    }
}
