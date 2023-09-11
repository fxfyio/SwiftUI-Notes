//
//  Create a Spinning Activity Indicator.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Spinning_Activity_Indicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
            .scaleEffect(2.0, anchor: .center)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute:  {
                    
                })
            }
    }
}

struct Create_a_Spinning_Activity_Indicator_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Spinning_Activity_Indicator()
    }
}
