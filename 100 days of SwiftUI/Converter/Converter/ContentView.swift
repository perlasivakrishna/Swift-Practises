//
//  ContentView.swift
//  Converter
//
//  Created by siva krishna on 14/10/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputUnit = 1
    @State private var outputUnit = 0
    @State private var inputValue = ""
    
    var outputValue: String {
        let impuLengthUnit = lenghtUnit(str: lenghtUnits[inputUnit])
        let outputLengthUnit = lenghtUnit(str: lenghtUnits[outputUnit])
        let inputLength = Measurement(value: Double(inputValue) ?? 0, unit:impuLengthUnit)
        let ouputLength = inputLength.converted(to: outputLengthUnit)
        return "\(ouputLength)"
    }
    
    let lenghtUnits = ["meters", "kilo meters", "feet", "yard", "miles"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Input Unit")) {
                    Picker("Input Unit", selection: $inputUnit) {
                        ForEach(0 ..< lenghtUnits.count) {
                            Text("\(self.lenghtUnits[$0])")
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                }
                TextField("Input Value", text: $inputValue)
                    .keyboardType(.decimalPad)
                Section(header: Text("Output Unit")) {
                    Picker("Output Unit", selection: $outputUnit) {
                        ForEach(0 ..< lenghtUnits.count) {
                            Text("\(self.lenghtUnits[$0])")
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Output Value")) {
                    Text(outputValue)
                }
            }
            .navigationBarTitle("Length Converter")
        }
    }
    
    func lenghtUnit(str: String) -> UnitLength {
        var unit:UnitLength
        switch str {
        case "meters":
            unit = .meters
            case "kilo meters":
            unit = .kilometers
            case "feet":
            unit = .feet
            case "yard":
            unit = .yards
            case "miles":
            unit = .miles
        default:
            unit = .meters
        }
        return unit
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
