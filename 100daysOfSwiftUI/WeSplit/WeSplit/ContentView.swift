//
//  ContentView.swift
//  WeSplit
//
//  Created by 장선영 on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
