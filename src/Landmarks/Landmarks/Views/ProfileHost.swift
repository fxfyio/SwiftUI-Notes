//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Eric on 8/16/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default

    var body: some View {
//        Text("Profile for: \(draftProfile.username)")
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }.padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
