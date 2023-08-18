//
//  C13_Opacity.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C13_Opacity: View {
    var body: some View {
        VStack {
            Text("This text has full opacity.")
            Text("This text is partially transparent.")
              .opacity(0.5)
        }.font(.headline)
    }
}

struct C13_Opacity_Previews: PreviewProvider {
    static var previews: some View {
        C13_Opacity()
    }
}
