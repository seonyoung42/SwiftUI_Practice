//
//  ContentView.swift
//  BetterRest
//
//  Created by 장선영 on 2023/03/06.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    var sleepTime: Date {
        calculateBadTime()
    }
    
    var body: some View {
        NavigationView {
            Form {
                VStack(alignment: .center, spacing: 10) {
                    Text("When do you want to wake up?")
                        .font(.headline)
                        .frame(maxWidth:.infinity, alignment: .center)
                    
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                .padding()
                
                Section("Desired amount of sleep") {

                    Stepper("\(sleepAmount.formatted()) hours",
                            value: $sleepAmount,
                            in: 4...12,
                            step: 0.25)
                }
                
                Section("Daily coffee intake") {
                    Picker("Number of cups", selection: $coffeeAmount) {
                        
                        ForEach(1..<21) {
                            Text($0 == 1 ? "1 cup" : "\($0) cups")
                        }
                    }
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Recommended BedTime")
                        .font(.title2)
                        .frame(maxWidth:.infinity, alignment: .center)
                    
                    Text(sleepTime.formatted(date: .omitted, time: .shortened))
                }
                .padding()
            }
            .navigationTitle("BetterRest")
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") { }
            } message: {
                Text(alertMessage)
            }
        }
    }
    
    func calculateBadTime() -> Date {
        var sleepTime = Date.now
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute],
                                                             from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(
                wake: Double(hour + minute),
                estimatedSleep: sleepAmount,
                coffee: Double(coffeeAmount))
            
            sleepTime = wakeUp - prediction.actualSleep
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your badtime."
            showingAlert = true
        }
        return sleepTime
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
