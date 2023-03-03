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
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
        .blur(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
