//
//  Add a Button to a NavigationBar.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Add_a_Button_to_a_NavigationBar: View {
    var body: some View {
        
        NavigationStack {
            Text("Hello, World!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "gear")
                        }

                    }
                }
        }
        
    }
}

struct Add_a_Button_to_a_NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        Add_a_Button_to_a_NavigationBar()
    }
}
