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
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role:  .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
        }

        Button {
            print("text")
        } label: {
            Image(systemName: "pencil")
            Text("Tap me!")
                .padding()
                .foregroundColor(.white)
                .background(.blue)
        }
        
        Button {
            print("text")
        } label: {
            Label("Tap me!", systemImage: "pencil")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
