//
//  C21_State.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C21_State: View {
    @State private var isSwitchedOn = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isSwitchedOn) {
                Text("Turn me on or off")
            }
            if isSwitchedOn {
              Text("The switch is on!")
            }
        }.padding()
    }
}

struct C21_State_Previews: PreviewProvider {
    static var previews: some View {
        C21_State()
    }
}
