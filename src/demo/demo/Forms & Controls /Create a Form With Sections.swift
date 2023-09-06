//
//  Create a Form With Sections.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Create_a_Form_With_Sections: View {
    @State private var name = ""
    @State private var email = ""
    @State private var age = ""

    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                }
                Section(header: Text("Additional Information")) {
                    TextField("Age", text: $age)
                }
            }.navigationTitle("Registration Form")
        }
    }
}

struct Create_a_Form_With_Sections_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Form_With_Sections()
    }
}
