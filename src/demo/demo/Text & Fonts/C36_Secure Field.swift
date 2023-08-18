//
//  C36_Secure Field.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C36_Secure_Field: View {
    @State private var password = ""

    var body: some View {
        SecureField("Enter your password", text: $password)
            .textContentType(.password)
            .padding()
            .background(RoundedRectangle(cornerRadius: 5).stroke())
            .multilineTextAlignment(.center)
    }
}

struct C36_Secure_Field_Previews: PreviewProvider {
    static var previews: some View {
        C36_Secure_Field()
    }
}
