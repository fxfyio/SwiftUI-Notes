//
//  Chain Multiple Animations.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Chain_Multiple_Animations: View {
    @State private var isStepOne = false
    @State private var isStepTwo = false
    @State private var isStepThree = false

    var body: some View {
        Rectangle()
            .fill(isStepOne ? .green: .red)
            .frame(width: isStepTwo ? 200:100, height: isStepTwo ? 200:100)
            .offset(x: isStepOne ? 150: 0, y: isStepOne ? 300: 0)
            .animation(.easeInOut(duration: 1.0), value: isStepOne)
            .animation(.easeInOut(duration: 1.0), value: isStepTwo)
            .animation(.easeInOut(duration: 1.0), value: isStepThree)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                    isStepOne = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                        isStepTwo = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                            isStepThree = true
                            
                        })
                    })
                })
            }

        
    }
}

struct Chain_Multiple_Animations_Previews: PreviewProvider {
    static var previews: some View {
        Chain_Multiple_Animations()
    }
}
