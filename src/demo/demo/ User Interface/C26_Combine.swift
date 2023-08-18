//
//  C26_Combine.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI
import Combine


struct C26_Combine: View {
    
    //@StateObject是一种SwiftUI属性包装器，它用于管理一个可观察对象的声明周期。该对象只会在视图的整个生命周期中创建一次，并且在视图更新时不会被销毁。这样可以确保在视图的不同更新之间共享同一个对象。
    @StateObject private var jokeFetcher = JokeFetcher()
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Text(jokeFetcher.joke)
                .padding()
            Button("Fetch Joke") {
                jokeFetcher.fetchJoke()
            }
        }.onAppear {
            jokeFetcher.fetchJoke()
        }
    }
    
}

struct C26_Combine_Previews: PreviewProvider {
    static var previews: some View {
        C26_Combine()
    }
}


class JokeFetcher: ObservableObject {
  // 可观察的字符串变量
  @Published var joke: String = ""
  //AnyCancellable类型的私有变量cancellable。通常与Combine框架一起使用，用于存储和管理可取消的观察订阅。当你不再需要观察某个对象时，你可以通过调用这个变量的cancel方法来取消观察。
  private var cancellable: AnyCancellable?
  private let jokes = [
    "Why don't scientists trust atoms? Because they make up everything!",
    "Why did the bicycle fall over? Because it was two tired!",
    "Why don't some animals play cards? Because they are afraid of cheetahs!",
    "Why did the scarecrow win an award? Because he was outstanding in his field!"
  ]

  func fetchJoke() {
    if let randomJoke = jokes.randomElement() {
      joke = randomJoke
    }
  }

  deinit {
    cancellable?.cancel()
  }
}

