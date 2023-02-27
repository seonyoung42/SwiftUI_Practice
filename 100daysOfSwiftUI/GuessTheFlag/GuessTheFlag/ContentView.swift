//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 장선영 on 2023/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .white, location: 0.45), Gradient.Stop(color: .blue, location: 0.55)]),
                       startPoint: .top,
                       endPoint: .bottom)
            .ignoresSafeArea()
        
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 0, endRadius: 200)
        
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .blue, .black, .pink]), center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
