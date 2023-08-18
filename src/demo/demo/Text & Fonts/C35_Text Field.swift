//
//  C35_Text Field.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C35_Text_Field: View {
    @State private var name = ""

    
    var body: some View {
        TextField("Enter your name", text: $name)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .background(.yellow)
            .font(.largeTitle)
            .onSubmit {
                print("name: \(name)")
            }
        
    }
}

struct C35_Text_Field_Previews: PreviewProvider {
    static var previews: some View {
        C35_Text_Field()
    }
}
