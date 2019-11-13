//
//  ContentView.swift
//  BetterRest
//
//  Created by siva krishna on 12/11/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   static var defaultWakeupTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
     return Calendar.current.date(from: components) ?? Date()
    }
    
    @State private var wakeup = Date()
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("when do you want to wake up")
                                   .font(.headline)
                               DatePicker("Please select a date", selection: $wakeup,  displayedComponents: .hourAndMinute)
                                   .labelsHidden()
                               .datePickerStyle(WheelDatePickerStyle())
                }
           
                Section {
                    Text("Desired amount of sleep")
                                     .font(.headline)
                                 Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                                     Text("\(sleepAmount, specifier: "%g") hours")
                                 }
                }
                
                Section {
                    Text("Daily coffee intake")
                        .font(.headline)
                    Stepper(value: $coffeeAmount, in: 1...20) {
                        if coffeeAmount == 1 {
                            Text("1 cup")
                        } else {
                            Text("\(coffeeAmount) cups")
                        }
                    }
                }
              
            }
            .navigationBarTitle("Better Rest")
            .navigationBarItems(trailing:
                Button(action: calculateBedTime) {
                    Text("Calculate")
                }
            )
                .alert(isPresented: $showingAlert) {
                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("Ok")))
            }
        }
    }
    
    func calculateBedTime() {
        let model = sleepCalculator()
        let components = Calendar.current.dateComponents([.hour, .minute], from: wakeup)
        let hour = (components.hour ?? 0) * 60 * 60
        let minutes = (components.minute ?? 0) * 60
        
        do {
            let prediction = try model.prediction(wake: Double(hour + minutes), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeup - prediction.actualSleep
            alertTitle = "Your ideal bed time is.."
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            alertMessage = formatter.string(from: sleepTime)
            
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem"
        }
        showingAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
