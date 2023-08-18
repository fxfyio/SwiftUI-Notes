//
//  C45_Shadow.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C45_Shadow: View {
    var body: some View {
        VStack {
            Image("CoolCat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
            
            Divider()

            Image("BirdDrinks")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .shadow(color: .gray, radius: 20, x: 0, y: 0)
            
        }
    }
}

struct C45_Shadow_Previews: PreviewProvider {
    static var previews: some View {
        C45_Shadow()
    }
}
