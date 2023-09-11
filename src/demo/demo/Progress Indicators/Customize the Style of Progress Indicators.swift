//
//  Customize the Style of Progress Indicators.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Customize_the_Style_of_Progress_Indicators: View {
    var body: some View {
        CustomProgress()
    }
}

struct CustomProgress: View {
  @State private var progressValue = 0.5
  var body: some View {
    ProgressView(value: progressValue)
      .progressViewStyle(CustomProgressViewStyle())
      .onAppear {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
          if progressValue < 1.0 {
            progressValue += 0.01
          } else {
            timer.invalidate()
          }
        }
      }
  }
}

struct CustomProgressViewStyle: ProgressViewStyle {
  func makeBody(configuration: Configuration) -> some View {
    VStack {
      ProgressView(value: configuration.fractionCompleted)
        .accentColor(configuration.fractionCompleted! < 1.0 ? .red : .blue)
      Text("\(Int((configuration.fractionCompleted ?? 0) * 100))%")
    }
  }
}


struct Customize_the_Style_of_Progress_Indicators_Previews: PreviewProvider {
    static var previews: some View {
        Customize_the_Style_of_Progress_Indicators()
    }
}
