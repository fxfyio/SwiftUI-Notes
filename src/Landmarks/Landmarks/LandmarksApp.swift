//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Eric on 8/15/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
#if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
#endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif

    }
}
