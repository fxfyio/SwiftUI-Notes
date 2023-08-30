//
//  C51_DisableButton.swift
//  demo
//
//  Created by Eric on 8/30/23.
//

import SwiftUI

struct C51_DisableButton: View {
    @State private var isButtonDisabled = true
    var body: some View {
        VStack {
            Button("Tap me") {
                print("Button tapped")
            }
            .disabled(isButtonDisabled)
            
            Button("\(isButtonDisabled ? "Enable": "Disable") button") {
                isButtonDisabled.toggle()
            }.padding()
        }
    }
}

struct C51_DisableButton_Previews: PreviewProvider {
    static var previews: some View {
        C51_DisableButton()
    }
}
