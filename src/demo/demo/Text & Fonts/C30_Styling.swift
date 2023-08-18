//
//  C30_Styling.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C30_Styling: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.custom("papyrus", size: 24))
            .foregroundColor(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct C30_Styling_Previews: PreviewProvider {
    static var previews: some View {
        C30_Styling()
    }
}
