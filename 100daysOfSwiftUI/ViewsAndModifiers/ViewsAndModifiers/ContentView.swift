//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 장선영 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = true
    
    var body: some View {
        Button("Hello, world") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
