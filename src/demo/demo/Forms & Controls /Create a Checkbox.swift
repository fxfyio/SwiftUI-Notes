//
//  Create a Checkbox.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Create_a_Checkbox: View {
    @State private var isChecked: Bool = false

    var body: some View {
        VStack {
            Toggle(isOn: $isChecked) {
                Text("I agree to the terms and conditions")
            }.toggleStyle(CheckboxToggleStyle())
                .padding()
            
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square": "square")
                .resizable()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

struct Create_a_Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Checkbox()
    }
}
