//
//  C50_Button.swift
//  demo
//
//  Created by Eric on 8/30/23.
//

import SwiftUI

struct C50_Button: View {
    var body: some View {
        
        VStack {
            Button("Submit") {
                
            }
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(5)
            
            
            Divider()
            
            
            Button("Press Me!") {
                
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .font(.title2)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Divider()
            
            Button {
                
            } label: {
                Image("AvocadoFriend")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            
            Divider()
            Button("Tap Me!") {
                buttonTapped()
            }

        }

    }
    
    func buttonTapped() {
        print("Button was tapped!")
    }
}

struct C50_Button_Previews: PreviewProvider {
    static var previews: some View {
        C50_Button()
    }
}
