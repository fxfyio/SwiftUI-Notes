//
//  C24_Environment Objects.swift
//  demo
//
//  Created by Eric on 8/18/23.
//
// 在不同视图之间共享状体
//虽然ObservableObject和ObservedObject非常适合在视图之间共享状态，但它们要求你手动从父级传递状态给子级。但是如果你想在应用程序的多个视图之间共享数据而不需要显式地传递它，那就可以使用环境对象。

import SwiftUI


class GameSettings: ObservableObject {
  @Published var score = 0
}


struct C24_Environment_Objects: View {
    var body: some View {
        VStack {
            Text("Sharing State Across Views With Environment Objects")
                .font(.headline)
                .padding()
            GameView().environmentObject(GameSettings())

        }
    }
}

struct C24_Environment_Objects_Previews: PreviewProvider {
    static var previews: some View {
        C24_Environment_Objects()
    }
}

struct GameView: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
            Button("+1") {
                settings.score += 1
            }.font(.title)
        }
    }
}
