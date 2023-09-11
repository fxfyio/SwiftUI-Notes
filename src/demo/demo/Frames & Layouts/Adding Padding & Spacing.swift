//
//  Adding Padding & Spacing.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Adding_Padding___Spacing: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack(spacing: 20) {
            Text("Padding and Spacing")
                .font(.largeTitle)
                .padding(.bottom, 20)
            HStack(spacing: 15) {
                Image(systemName: "hare.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.orange.opacity(0.5))
                    .clipShape(Circle())
                Image(systemName: "tortoise.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.orange.opacity(0.5))
                    .clipShape(Circle())
            }
            
            Text("It's not about speed, it's about comfort!")
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color.orange.opacity(0.2))
                .cornerRadius(10)
            
        }
        .padding()

    }
}

struct Adding_Padding___Spacing_Previews: PreviewProvider {
    static var previews: some View {
        Adding_Padding___Spacing()
    }
}
