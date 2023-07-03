//
//  ArrayListDetailView.swift
//  SwiftUI-Notes-Demo
//
//  Created by Eric on 7/3/23.
//

import SwiftUI

struct ArrayListDetailView: View {
    var numbers = [
        "1", "2", "3", "4", "5",
    ]
    var body: some View {
        List(numbers, id: \.hashValue) { str in
            Text(str)
        }.navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ArrayListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArrayListDetailView()
    }
}
