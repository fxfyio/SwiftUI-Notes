//
//  C52_IconButton.swift
//  demo
//
//  Created by Eric on 8/30/23.
//

import SwiftUI

struct C52_IconButton: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Label("Show some Love!", systemImage: "heart.fill")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .font(.headline)
                    .cornerRadius(10)
            }

        }
    }
}

struct C52_IconButton_Previews: PreviewProvider {
    static var previews: some View {
        C52_IconButton()
    }
}
