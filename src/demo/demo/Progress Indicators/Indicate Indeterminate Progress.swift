//
//  Indicate Indeterminate Progress.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Indicate_Indeterminate_Progress: View {
    var body: some View {
        IndeterminateProgressView()
    }
}

struct Indicate_Indeterminate_Progress_Previews: PreviewProvider {
    static var previews: some View {
        Indicate_Indeterminate_Progress()
    }
}

struct IndeterminateProgressView: View {
    @State private var isLoading = true
    var body: some View {
        VStack {
            ProgressView("Loading...")
                .progressViewStyle(.circular)
                .scaleEffect(2.0, anchor: .center)
        }
        .onAppear {
            startAnimating()
        }
    }
    
    func startAnimating() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            withAnimation(Animation.linear(duration: 1.5).repeatForever()) {
                isLoading = true
            }
        })
    }
}
