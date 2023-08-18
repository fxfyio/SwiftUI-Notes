//
//  HelloWorld.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

//符合View协议的结构体
struct C01_HelloWorld: View {
    //some View表示body将输出符合View条件的内容
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
            Image("Kodeco")
            Text("Welcome to the Kodeco SwiftUI cookbook!")
        }
    }
}

// 符合PreviewProvider协议的结构体
struct C01_HelloWorld_Previews: PreviewProvider {
    static var previews: some View {
        C01_HelloWorld()
    }
}
