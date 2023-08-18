//
//  C34_Custom Fonts.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C34_Custom_Fonts: View {
    var body: some View {
        Text("Rock Lobster")
              .font(.custom("Lobster-Regular",size: 36))
    }
}

struct C34_Custom_Fonts_Previews: PreviewProvider {
    static var previews: some View {
        C34_Custom_Fonts()
    }
}
