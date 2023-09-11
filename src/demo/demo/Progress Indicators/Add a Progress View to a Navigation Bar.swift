//
//  Add a Progress View to a Navigation Bar.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Add_a_Progress_View_to_a_Navigation_Bar: View {
    var body: some View {
        NavigationStack {
          VStack {
            Text("Hello, World!")
          }
          .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
              ProgressView().progressViewStyle(LinearProgressViewStyle(tint: Color.blue))

            }
          }
        }
      }
}

struct Add_a_Progress_View_to_a_Navigation_Bar_Previews: PreviewProvider {
    static var previews: some View {
        Add_a_Progress_View_to_a_Navigation_Bar()
    }
}
