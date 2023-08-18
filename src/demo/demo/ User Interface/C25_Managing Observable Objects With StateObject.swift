//
//  C25_Managing Observable Objects With StateObject.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C25_Managing_Observable_Objects_With_StateObject: View {
    @StateObject private var timerManager = TimerManager()

    var body: some View {
        VStack {
            Text("Timer count: \(timerManager.timerCount)")
                .font(.title)
                .padding()
            Button {
                timerManager.start()
            } label: {
                Text("Start timer")
            }
            .padding()
            
            Button {
                timerManager.stop()
            } label: {
                Text("Stop Timer")
            }
            .padding()
        }
    }
}

struct C25_Managing_Observable_Objects_With_StateObject_Previews: PreviewProvider {
    static var previews: some View {
        C25_Managing_Observable_Objects_With_StateObject()
    }
}

class TimerManager: ObservableObject {
    @Published var timerCount = 0
    private var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.timerCount += 1
            
        }
    }
    
    func stop() {
        timer.invalidate()
    }
}
