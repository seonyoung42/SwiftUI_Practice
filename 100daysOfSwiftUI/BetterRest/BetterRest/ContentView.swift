//
//  ContentView.swift
//  BetterRest
//
//  Created by 장선영 on 2023/03/06.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours",
                value: $sleepAmount,
                in: 4...12,
                step: 0.25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
