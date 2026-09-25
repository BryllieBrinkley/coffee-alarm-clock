//
//  ContentView.swift
//  BetterRest
//
//  Created by Jibryll Brinkley on 9/25/26.
//

import SwiftUI


struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    @State private var coffeeAmount = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                
                DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired Amount of Sleep")
                    .font(.headline)

                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                
                Text("Daily Coffee Intake")
                Stepper("\(coffeeAmount) cups", value: $coffeeAmount, in: 1...20)
                
            }
            .navigationTitle("Coffee Alarm Clock")
            .toolbar {
                Button {
                    calculateBedtime()
                } label: {
                    Text("Calculate")
                }
            
        }


        }
    
    }
    
    
    
    func calculateBedtime() {
        
    }
}

#Preview {
    ContentView()
}
