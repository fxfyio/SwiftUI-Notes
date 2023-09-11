//
//  Create a Custom Progress View .swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Create_a_Custom_Progress_View_: View {
    @State var progress: CGFloat = 0.5
    
    var body: some View {
        VStack {
            CustomProgressView(progress: progress)
                .frame(height: 10)
                .padding(.horizontal, 50)
            Button {
                progress += 0.1
            } label: {
                Text("Increase Progress")
            }

            
        }
    }
}

struct Create_a_Custom_Progress_View__Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Custom_Progress_View_()
    }
}

struct CustomProgressView: View {
    let progress: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 10)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(
                        width: min(progress * geometry.size.width, geometry.size.width),
                        height: 10
                    )
                    .foregroundColor(.blue)
            }
            
        }
    }
}
