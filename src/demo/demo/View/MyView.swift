//
//  MyView.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        Text("Welcome to my amazing app!")
            .frame(height: 50)
            .padding()
            .font(.title)
            .foregroundColor(.blue)
            .background(
                Image("image")
                    .resizable(resizingMode: .tile)
                    .opacity(0.25)
                
            )
            .border(Color.black, width: 1)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
