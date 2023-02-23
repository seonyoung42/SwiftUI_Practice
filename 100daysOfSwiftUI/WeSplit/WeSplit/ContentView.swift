//
//  ContentView.swift
//  WeSplit
//
//  Created by 장선영 on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    
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
