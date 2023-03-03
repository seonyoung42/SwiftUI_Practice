//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 장선영 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    var motto1: some View {
        Text("Draco dormiens")
    }
    
    let motto2 = Text("nunquam titillandus")

    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    var body: some View {
        VStack {
            spells
            motto1
            motto2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
