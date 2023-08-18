//
//  C29_Environment.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

enum Theme {
    case light, dark
}

// Defining a custom environment value
struct Themekey: EnvironmentKey {
    static let defaultValue: Theme = .light
}

extension EnvironmentValues {
    var theme: Theme {
        get { self[Themekey.self]}
        set { self[Themekey.self] = newValue}
    }
}

extension View {
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}

struct ThemeView: View {
    @Environment(\.theme) var theme: Theme
    
    var body: some View {
        VStack {
            if theme == .light {
                Text("Light Theme")
                    .foregroundColor(.black)
                    .background(.white)
            } else {
                Text("Dark Theme")
                    .foregroundColor(.white)
                    .background(.black)
            }
        }
        .padding()
    }
}

struct C29_Environment: View {
    
    @State var theme: Theme = .light
    
    var body: some View {
        VStack {
            Button("Switch theme") {
                switch theme {
                case .light:
                    theme = .dark
                case .dark:
                    theme = .light
                }
            }
            ThemeView()
        }.theme(theme)
    }
}

struct C29_Environment_Previews: PreviewProvider {
    static var previews: some View {
        C29_Environment()
    }
}
