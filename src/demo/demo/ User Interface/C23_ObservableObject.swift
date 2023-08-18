//
//  C23_ObservableObject.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI


//ObservableObject  是一个协议
class UserSettings: ObservableObject {
    //Published 当发生改变时通知视图更新
  @Published var username = "Anonymous"
}

struct C23_ObservableObject: View {
    // ObservedObject 观测的对象
    @ObservedObject var settings = UserSettings()

    var body: some View {
        VStack {
            Text("Hello, \(settings.username)")
                .padding()
            Button("change username") {
                settings.username = "john Doe"
            }
        }
    }
}

struct C23_ObservableObject_Previews: PreviewProvider {
    static var previews: some View {
        C23_ObservableObject()
    }
}
