//
//  Make a Custom Segmented Progress Bar.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Make_a_Custom_Segmented_Progress_Bar: View {
    @State private var progressOne: CGFloat = 0
    @State private var progressTwo: CGFloat = 0
    @State private var progressThree: CGFloat = 0

    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.green)
                        .frame(height: 10)
                        .frame(width: progressOne * geometry.size.width / 3)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.blue)
                        .frame(height: 10)
                        .frame(width: progressTwo * geometry.size.width / 3)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.purple)
                        .frame(height: 10)
                        .frame(width: progressThree * geometry.size.width / 3)
                }
                .frame(height: 50)
            }
            Button("Start Task") {
                withAnimation(.easeInOut(duration: 2)) {
                    progressOne = 1
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                    withAnimation(.easeInOut(duration: 2)) {
                        progressTwo = 1.0
                    }
                })
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: {
                    withAnimation(.easeInOut(duration: 2)) {
                        progressThree = 1.0
                    }
                })
                
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}

struct Make_a_Custom_Segmented_Progress_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Make_a_Custom_Segmented_Progress_Bar()
    }
}
