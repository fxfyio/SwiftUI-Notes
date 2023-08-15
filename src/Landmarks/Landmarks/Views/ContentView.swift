//
//  ContentView.swift
//  Landmarks
//
//  Created by Eric on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        LandmarkList()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
