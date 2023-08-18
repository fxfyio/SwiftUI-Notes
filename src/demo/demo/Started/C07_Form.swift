//
//  C07_Form.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C07_Form: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email )
                }
                
                Section(header: Text("Login Credentails")) {
                    SecureField("Password", text: $password)
                }
                Section {
                    Button(action: register) {
                        Text("Register")
                    }
                }
            }.navigationTitle("Registration Form")
        }
    }
    
    func register() {
        
    }
}

struct C07_Form_Previews: PreviewProvider {
    static var previews: some View {
        C07_Form()
    }
}
