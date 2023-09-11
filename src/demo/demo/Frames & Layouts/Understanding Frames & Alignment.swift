//
//  Understanding Frames & Alignment.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Understanding_Frames___Alignment: View {
    var body: some View {
        VStack {
            
            Text("Hello, SwiftUI")
                .font(.largeTitle)
                .frame(width: 300, height: 100,  alignment: .topLeading)
                .border(Color.red)
            Divider()
            
            Text("Hello, SwiftUI")
                .font(.largeTitle)
                .frame(width: 300, height: 100,  alignment: .top)
                .border(Color.red)
            Divider()
            Text("Hello, SwiftUI")
                .font(.largeTitle)
                .frame(width: 300, height: 100,  alignment: .bottomLeading)
                .border(Color.red)
        }
    }
}

struct Understanding_Frames___Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Understanding_Frames___Alignment()
    }
}
