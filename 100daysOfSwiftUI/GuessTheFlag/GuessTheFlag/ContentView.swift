//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 장선영 on 2023/02/27.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }/// isPresented가 alert가 dismiss될 때 showingAlert를 false로 만들어줌 -> two-way binding ('$')
        .alert("Important Message", isPresented: $showingAlert)  {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
