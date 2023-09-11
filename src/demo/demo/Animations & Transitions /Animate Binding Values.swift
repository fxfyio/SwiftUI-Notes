//
//  Animate Binding Values.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Animate_Binding_Values: View {
    @State private var selection = 0

    var body: some View {
        VStack {
            Text("Your selection is: \(selection)")
                .font(.title)
            Picker("Choose a number", selection: $selection.animation()) {
                ForEach(0..<10){
                    Text("\($0)")
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 100, height: 200)
        }
    }
}

struct Animate_Binding_Values_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Binding_Values()
    }
}
