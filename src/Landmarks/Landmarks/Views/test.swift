//
//  test.swift
//  Landmarks
//
//  Created by Eric on 8/17/23.
//

import SwiftUI

struct test: View {
    @State var quantity: Int = 0

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center, spacing: 20) {
                ForEach(1...100, id: \.self) {
                    Text("Column \($0)")
                }
            }
        }

    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
