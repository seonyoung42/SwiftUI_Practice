//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 장선영 on 2023/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("Content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
