//
//  Create a Slider.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Create_a_Slider: View {
    @State private var value: Double = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...1)
            Text("Value: \(value, specifier: "%.2f")")
        }
        .padding()
    }
}

struct Create_a_Slider_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Slider()
    }
}
