//
//  C40_Image.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C40_Image: View {
    var body: some View {
        VStack {
            VStack {
                Image("HedgehogInClover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text("默认展示")
            }
            Divider()
            VStack {
                Image("HelloHedgy")
                    .resizable()
                    .aspectRatio(2, contentMode: .fit)
                Text("宽高比为2:1展示")
            }
            Divider()
            VStack {
                Image("HelloHedgy")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                Text("宽高比为1:1展示")

            }
        }

    }
}

struct C40_Image_Previews: PreviewProvider {
    static var previews: some View {
        C40_Image()
    }
}
