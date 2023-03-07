//
//  ContentView.swift
//  BetterRest
//
//  Created by 장선영 on 2023/03/06.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
       DatePicker("Please enter a date",
                  selection: $wakeUp,
                  in: Date.now...,
                  displayedComponents: .date)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
