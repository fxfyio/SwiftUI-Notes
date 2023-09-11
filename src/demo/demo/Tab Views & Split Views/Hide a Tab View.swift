//
//  Hide a Tab View.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Hide_a_Tab_View: View {
    @State private var isTabViewHidden = false

    var body: some View {
        VStack {
            Button {
                isTabViewHidden.toggle()
            } label: {
                Text(isTabViewHidden ? "Show Tab View": "Hide Tab View")
            }
            .padding()
            
            if !isTabViewHidden {
                TabView {
                    Text("First View")
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("First")
                        }
                    Text("Second View")
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("Second")
                        }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

struct Hide_a_Tab_View_Previews: PreviewProvider {
    static var previews: some View {
        Hide_a_Tab_View()
    }
}
