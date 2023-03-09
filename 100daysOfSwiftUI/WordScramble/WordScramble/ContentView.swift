//
//  ContentView.swift
//  WordScramble
//
//  Created by 장선영 on 2023/03/09.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }
            
            ForEach(people, id:\.self) {
                Text($0)
            }
            
            Text("Static row")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
