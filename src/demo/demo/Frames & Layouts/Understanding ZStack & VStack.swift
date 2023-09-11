//
//  Understanding ZStack & VStack.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Understanding_ZStack___VStack: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Top")
                    .padding()
                    .background(Color.green)
                Spacer()
                    .frame(height: 20)
                Text("Minddle")
                    .padding()
                    .background(Color.yellow)
                Spacer()
                    .frame(height: 20)
                Text("Bottom")
                    .padding()
                    .background(Color.red)
            }
            
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width: 100, height:  100)
                .foregroundColor(.orange)

            
        }
    }
}

struct Understanding_ZStack___VStack_Previews: PreviewProvider {
    static var previews: some View {
        Understanding_ZStack___VStack()
    }
}
