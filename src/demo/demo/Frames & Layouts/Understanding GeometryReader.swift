//
//  Understanding GeometryReader.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Understanding_GeometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(0..<10) { i in
                    Rectangle()
                        .fill(.blue)
                        .frame(
                            width: geometry.size.width * CGFloat(i+1)/10,
                            height: geometry.size.height / 10
                        )
                }
            }
        }
    }
}

struct Understanding_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Understanding_GeometryReader()
    }
}
