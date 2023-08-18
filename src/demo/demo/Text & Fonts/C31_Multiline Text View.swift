//
//  C31_Multiline Text View.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C31_Multiline_Text_View: View {
    var body: some View {
        VStack {
            Text("Hello!\nWelcome to our app. We're so glad you're here. \n\nYou will love everything we have to offer.")
            Divider()
            
            let name = "Sarah"
            let message = "Hello, \(name)!\nThanks for using our app. \n\nWe hope you have a great experience."
            Text(message).padding()
            
            Divider()
            
            Text("Why do programmers always mix up Halloween and Christmas?\nBecause Oct 31 == Dec 25!")
                .lineLimit(10)
                .multilineTextAlignment(.center)
                .padding()
        }

    }
}

struct C31_Multiline_Text_View_Previews: PreviewProvider {
    static var previews: some View {
        C31_Multiline_Text_View()
    }
}
