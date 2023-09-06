//
//  Add a Stepper.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Add_a_Stepper: View {
    @State private var quantity: Int = 1

    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack (spacing: 10) {
            Text("How many packets of magic beans?")
            Stepper(value: $quantity, in: 1...10) {
                Text("\(quantity)")
            }
            .padding(.horizontal, 100)
        }
        .padding(30)
    }
}

struct Add_a_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Add_a_Stepper()
    }
}
