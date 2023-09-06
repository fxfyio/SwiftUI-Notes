//
//  Create a Picke.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Create_a_Picke: View {
    let options = ["Frida Kahlo", "Georgia O'Keeffe", "Mary Cassatt", "Lee Krasner", "Helen Frankenthaler"]

    @State private var selectedOption = 0

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "paintpalette")
                    .foregroundColor(.blue)
                    .padding(.trailing, 4)
                Text("Favorite artist")
                
                Text(options[selectedOption])
                    .font(.title)
                    .padding(.leading, 4)
            }
            .padding()
            Picker("Options", selection: $selectedOption) {
                ForEach(options.indices, id: \.self) {index  in
                    Text(options[index])
                        .font(.headline)
                }
            }
            .pickerStyle(.wheel)
            .padding()
        }
    }
}

struct Create_a_Picke_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Picke()
    }
}
