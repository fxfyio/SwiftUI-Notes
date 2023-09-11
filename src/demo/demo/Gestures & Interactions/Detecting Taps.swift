//
//  Detecting Taps.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Detecting_Taps: View {
    @State private var countdown = 10

    var body: some View {
        VStack {
            Image(systemName: "arrowtriangle.up.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.orange.gradient)
            Text("\(countdown) until launch")
                .padding()
        }
        .onTapGesture {
            if self.countdown > 0 {
                self.countdown -= 1
            }
        }
    }
}

struct Detecting_Taps_Previews: PreviewProvider {
    static var previews: some View {
        Detecting_Taps()
    }
}
