//
//  C22_Binding.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C22_Binding: View {
    @State private var selectedColor = Color.red

    var body: some View {
        VStack {
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100, alignment: .center)
            ColorPickerView(selectedColor: $selectedColor)
        }.padding()
    }
}

struct C22_Binding_Previews: PreviewProvider {
    static var previews: some View {
        C22_Binding()
        
    }
}

struct ColorPickerView: View {
    
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .orange]

    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}
