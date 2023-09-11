//
//  Understanding HStack & Spacer.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Understanding_HStack___Spacer: View {
    var body: some View {
        HStack {
            Image(systemName: "ant.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text("Cute Ant")
                .font(.title)
                .padding(.leading, 10)
            Spacer()
            
            Image(systemName: "ladybug")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text("Cherrful Ladybug")
                .font(.title)
                .padding(.leading, 10)
            
        }.padding()
    }
}

struct Understanding_HStack___Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Understanding_HStack___Spacer()
    }
}
