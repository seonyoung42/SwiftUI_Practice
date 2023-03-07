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
        VStack {
            Text(Date.now, format: .dateTime.day().month().year())
            Text(Date.now.formatted(date: .long, time: .omitted))
        }
    }
    
    func example() {
        let now = Date.now
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = now...tomorrow
    }
    
    func example2() {
        var component = DateComponents()
        component.hour = 8
        component.minute = 0
        let date = Calendar.current.date(from: component) ?? Date.now
    }
    
    func example3() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let miniute = components.minute ?? 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
