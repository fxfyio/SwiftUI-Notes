//
//  C32_Dynamic Type Text Styles.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C32_Dynamic_Type_Text_Styles: View {
    var body: some View {
        VStack {
            Text("Welcome to my app!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            Text("Explore the world")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding()
            Text("Discover new places and experiences")
                .font(.headline)
                .padding()
            Text("Get inspired")
                .font(.subheadline)
                .foregroundColor(.purple)
                .padding()
            Text("Join out community")
                .font(.callout)
                .foregroundColor(.orange)
                .padding()
            Text("Share your adventures with us")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding()
            Text("Follow us on social media")
                .font(.caption)
                .foregroundColor(.black)
                .padding()
        }
    }
}

struct C32_Dynamic_Type_Text_Styles_Previews: PreviewProvider {
    static var previews: some View {
        C32_Dynamic_Type_Text_Styles()
    }
}
