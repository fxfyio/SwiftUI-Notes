//
//  Create a Color Picker.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Color_Picker: View {
    @State private var colorChoice = Color.white
    
    var body: some View {
        VStack {
            ColorPicker("Choose you color", selection: $colorChoice)
                .padding()
            Text("You choose:").font(.title)
            Rectangle()
                .fill(colorChoice)
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

struct Create_a_Color_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Color_Picker()
    }
}
