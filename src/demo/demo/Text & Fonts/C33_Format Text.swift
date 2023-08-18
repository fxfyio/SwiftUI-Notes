//
//  C33_Format Text.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C33_Format_Text: View {
    var body: some View {
        VStack {
            Text("Hello ")
                .fontWeight(.bold)
                .italic()
            + Text("World")
                .underline()
            
            Divider()
            
            Text("Hello, World!")
                .fontWeight(.semibold)
                .italic()
                .underline()
                .strikethrough(true, color: .red)
            
            Divider()
            
            Text("**Bold** and _italic_ text!")
            
            Divider()
            
            Text(attributedQuote)
                .font(.system(size: 16, weight: .medium, design: .serif))
                .foregroundColor(.blue)

        }

    }
}

let quote = """
**"Be yourself;** everyone else is _already taken._"
- **Oscar Wilde**
"""
let attributedQuote = try! AttributedString(markdown: quote)

struct C33_Format_Text_Previews: PreviewProvider {
    static var previews: some View {
        C33_Format_Text()
    }
}
