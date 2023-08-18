//
//  C27_Storage.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C27_AppStorage: View {
    @AppStorage("username") var username: String = "Anonymous"

    var body: some View {
        VStack {
            Text("Welcome, \(username)")
                .padding()
            Button("Log in") {
                username = "SuzGupta"
            }
        }
    }
}

struct C27_Storage_Previews: PreviewProvider {
    static var previews: some View {
        C27_AppStorage()
    }
}
