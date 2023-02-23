//
//  ContentView.swift
//  WeSplit
//
//  Created by 장선영 on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var buttonCount = 0
    
    var body: some View {
        NavigationView {
            Form {
                Group {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                
                Group {
                     Text("Hello, World!")
                     Text("Hello, World!")
                     Text("Hello, World!")
                 }
                
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                
                Button("Tap Count : \(buttonCount)") {
                    buttonCount += 1
                }
            }
            .navigationTitle("Swift UI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
