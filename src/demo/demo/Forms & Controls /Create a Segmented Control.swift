//
//  Create a Segmented Control.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Segmented_Control: View {
    @State private var selection = 0
    var body: some View {
        VStack {
            Picker(selection: $selection) {
                Text("option 1").tag(0)
                Text("option 2").tag(1)
                Text("option 3").tag(2)

            } label: {
                Text("Picker")
            }.padding(.bottom)
            Divider().padding(.bottom)
            
            Picker(selection: $selection) {
                Text("option 1").tag(0)
                Text("option 2").tag(1)
                Text("option 3").tag(2)

            } label: {
                Text("Picker")
            }.pickerStyle(SegmentedPickerStyle())
                .padding(.bottom)
            
        }.padding()


    }
}

struct Create_a_Segmented_Control_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Segmented_Control()
    }
}
