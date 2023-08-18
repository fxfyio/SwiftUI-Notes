//
//  C41_Crop an Image.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C41_Crop_an_Image: View {
    var body: some View {
        VStack {
            Text("Cropping With Clipped")
                .font(.title)
            Image("WinterPup")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .border(.white, width: 2)
                .shadow(radius: 10)
        }
    }
}

struct C41_Crop_an_Image_Previews: PreviewProvider {
    static var previews: some View {
        C41_Crop_an_Image()
    }
}
