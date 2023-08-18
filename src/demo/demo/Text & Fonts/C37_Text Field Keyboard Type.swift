//
//  C37_Text Field Keyboard Type.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C37_Text_Field_Keyboard_Type: View {
    @State private var cell = ""
    @State private var name = ""

    
    var body: some View {
        
        VStack {
            
            TextField("Enter your cell number", text: $cell)
                .multilineTextAlignment(.center)
                .keyboardType(.phonePad)
                .padding()
            Divider()
            TextField("Enter your name", text: $name)
                .keyboardType(.default)
                .submitLabel(.done)
                .multilineTextAlignment(.center)
                .onSubmit {
                    print("name entered: \(name)")
                }
        }

    }
}

struct C37_Text_Field_Keyboard_Type_Previews: PreviewProvider {
    static var previews: some View {
        C37_Text_Field_Keyboard_Type()
    }
}
