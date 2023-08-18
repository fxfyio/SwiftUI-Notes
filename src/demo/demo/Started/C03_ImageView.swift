//
//  C03_ImageView.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C03_ImageView: View {
    var body: some View {
        Image("image")
            .resizable()//确保可以调整大小
            .aspectRatio(contentMode: .fill)//填充模式
            .frame(width: 200, height: 200)
            .clipShape(Circle()) //裁剪为圆形
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) //描边
            .shadow(radius: 7) //阴影
        
    }
}

struct C03_ImageView_Previews: PreviewProvider {
    static var previews: some View {
        C03_ImageView()
    }
}
