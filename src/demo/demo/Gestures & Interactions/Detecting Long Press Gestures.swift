//
//  Detecting Long Press Gestures.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Detecting_Long_Press_Gestures: View {
    var body: some View {
        Text("Tap and hold me!")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .onLongPressGesture(minimumDuration: 1, perform: {
                print("Long press detected!")
            })
                
            
    }
}

struct Detecting_Long_Press_Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Detecting_Long_Press_Gestures()
    }
}
