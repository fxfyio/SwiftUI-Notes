//
//  C02_Previews.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C02_Previews: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI")
                .padding()
            Button {
                print("Button tapped")
            } label: {
                Text("Tap me")
            }

            
        }
    }
}

struct C02_Previews_Previews: PreviewProvider {
    static var previews: some View {
        C02_Previews()
            .preferredColorScheme(.dark)
        
        ContentView()
          .previewInterfaceOrientation(.landscapeLeft)
        
        C02_Previews()
            .previewDevice("iPhone 14 Pro Max")

    }
}
