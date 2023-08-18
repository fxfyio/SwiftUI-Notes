//
//  C04_Button.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C04_Button: View {
    var body: some View {
        Button {
            print("Button Pressed")
        } label: {
            Text("Press Me!")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(
            LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomLeading)
        )
        .cornerRadius(10)

    }
}

struct C04_Button_Previews: PreviewProvider {
    static var previews: some View {
        C04_Button()
    }
}
