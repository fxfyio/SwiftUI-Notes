//
//  Mastering Safe Areas.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Mastering_Safe_Areas: View {
    var body: some View {
       ZStack {
         Image("ocean-view")
           .resizable()
           .aspectRatio(contentMode: .fill)
           .edgesIgnoringSafeArea(.all)

         VStack {
           Text("Welcome to Beach Paradise!")
             .font(.title)
             .fontWeight(.bold)
             .foregroundColor(.white)
             .padding()
             .background(Color.black.opacity(0.7))
             .cornerRadius(10)

           Spacer()
         }
         .padding(.horizontal)
       }
     }
}

struct Mastering_Safe_Areas_Previews: PreviewProvider {
    static var previews: some View {
        Mastering_Safe_Areas()
    }
}
