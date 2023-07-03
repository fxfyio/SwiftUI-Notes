//
//  StaticListDetailView.swift
//  SwiftUI-Notes-Demo
//
//  Created by Eric on 7/3/23.
//

import SwiftUI

struct StaticListDetailView: View {
    var body: some View {
        List {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
            Text("5")
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct StaticListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StaticListDetailView()
    }
}
