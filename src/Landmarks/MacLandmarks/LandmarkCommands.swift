//
//  LandmarkCommands.swift
//  MacLandmarks
//
//  Created by Eric on 8/17/23.
//

import SwiftUI

struct LandmarkCommands: Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    var body: some Commands {
        SidebarCommands()
        
        CommandMenu("Lanmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f", modifiers: [.shift, .option])
        }
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues{
    var selectedLandmark: Binding<Landmark>? {
        get {self[SelectedLandmarkKey.self]}
        set {self[SelectedLandmarkKey.self] = newValue}
    }
}
