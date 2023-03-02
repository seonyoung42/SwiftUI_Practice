//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 장선영 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello, world!") {
            
        }
        .tint(.black)
        .frame(width: 100, height: 100)
        .background(.red)
        .padding()
        .background(.blue)
        .padding()
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
