//
//  Animate a Progress Bar.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI
import Combine

struct Animate_a_Progress_Bar: View {
    @State private var progress: CGFloat = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: 300, height: 20)
                .opacity(0.3)
                .foregroundColor(.gray)
            
            Rectangle()
                .frame(width: progress * 300, height: 20)
                .foregroundColor(.green)
                .animation(.easeInOut, value: progress)
        }
        .onReceive(timer) { _ in
            if progress < 1.0 {
                progress += 0.01
            }
                
        }
        
    }
}

struct Animate_a_Progress_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Animate_a_Progress_Bar()
    }
}
