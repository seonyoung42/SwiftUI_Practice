//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 장선영 on 2023/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("1")
                Text("2")
                Text("3")
            }
            HStack {
                Text("4")
                Text("5")
                Text("6")
            }
            HStack {
                Text("7")
                Text("8")
                Text("9")
            }
        }
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, world!")
            Text("This is other text")
        }

        HStack {
            Text("Hello, world!")
            Text("This is other text")
        }
        
        ZStack {
            Text("Hello, world!")
            Text("This is other text")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
