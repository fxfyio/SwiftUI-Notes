//
//  Customize List Rows .swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Customize_List_Rows_: View {
    let names = ["Alice", "Bob", "Charlie", "Dave"]

    var body: some View {
        VStack {
            List(names, id: \.self) { name in
                Text(name)
                    .listRowBackground(Color.green)
                    .foregroundColor(.white)
            }
            
            List(names, id: \.self) { name in
                Text(name)
                    .listRowBackground(
                        LinearGradient(
                            gradient: Gradient(colors: [.blue, .purple]),
                            startPoint: .leading,
                            endPoint: .trailing)
                    )
                    .foregroundColor(.white)
            }
        }
    }
}

struct Customize_List_Rows__Previews: PreviewProvider {
    static var previews: some View {
        Customize_List_Rows_()
    }
}
